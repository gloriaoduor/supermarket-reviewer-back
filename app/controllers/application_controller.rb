
require 'sinatra/cross_origin'
class ApplicationController < Sinatra::Base

    set :default_content_type, 'application/json'

    configure do
        enable :cross_origin
      end
      before do
        response.headers['Access-Control-Allow-Origin'] = '*'
      end
    get '/' do 
      sm = Supermarket.all
      sm.to_json(only: [:id, :name],
      include: {reviews: {only: [:id, :comment],
      include: {shopper: {only: [:id, :name]}}}
      })
    end 
    #get all reviews of the supermarket that has been specified
    get '/:name' do
        s_mkt = Supermarket.find_by(name: params[:name])
        s_mkt.to_json(only: [:name],
                    include: {reviews: {only: [:comment],
                    include: {shopper: {only: [:name]}}}
                    })
    end 

    post '/newreview' do
      shopper = Shopper.create(name: params[:name])
      shopper.to_json
      review =  Review.create(comment: params[:comment], shopper_id: shopper.id, supermarket_id: params[:supermarket_id])
      review.to_json
      #how to get the id of the supermarket from a dropdown
    end 


    options "*" do
        response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
        response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
        response.headers["Access-Control-Allow-Origin"] = "*"
        200
    end 
end 
