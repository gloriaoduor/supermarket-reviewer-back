require_relative './config/environment'
require './app/controllers/application_controller.rb'

#parse json into params hash
use Rack::JSONBodyParser

run ApplicationController.new