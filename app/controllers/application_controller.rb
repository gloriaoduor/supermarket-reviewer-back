
class ApplicationController < Sinatra::Base
    get '/' do 
        "<h1>Homepage </h1>"
    end
    #when one wants to see all supermarkets (how to render to frontend)
    get '/supermarkets' do
        s_markets = Supermarket.all
        s_markets.to_json
    end 
    #get all reviews of the supermarket that has been specified
    get '/supermarkets/:id' do
        s_mkt = Supermarket.find(params[:id])
        s_mkt.to_json(only: [:name],
                    include: {reviews: {only: [:comment],
                    include: {shopper: {only: [:name]}}}
                    })

    end 
end 
