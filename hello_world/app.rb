require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello IHR World'
end
