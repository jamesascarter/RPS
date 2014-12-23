require 'sinatra/base'
require 'sinatra'
require_relative './models/player'
require_relative './models/game'
require './app/controllers/home'
require './app/controllers/game'
require 'rack-flash'


enable :sessions
use Rack::Flash
set :session_secret, 'super secrets'





