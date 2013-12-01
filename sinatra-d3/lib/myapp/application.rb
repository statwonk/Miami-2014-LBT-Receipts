
require 'sinatra'
require 'sinatra/content_for'

module MyApp
  class Application < Sinatra::Base

   set :app_file, __FILE__
   set :root, File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))

   enable :logging

   helpers Sinatra::ContentFor

   get '/' do
     show :index, "My Title"
   end

   def show(template, title)
     @title = title
     erb(template)
   end

  end
end

