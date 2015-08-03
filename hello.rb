require 'sinatra'
require 'shotgun'

class Test < Sinatra::Base
  get '/' do
    @names = %w(Leon Ken).sample
    erb :index
  end

  get '/hello' do
    @visitor = params[:name]
    erb :index
  end
end
