require 'rubygems'
require 'bundler'

Bundler.setup :default, :development, :example

require 'sinatra'
require 'omniauth-google-apps'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :google_apps
end

get '/' do
  <<-HTML
    <a href='/auth/google_apps'>Sign in with Google Apps</a>
    HTML
end

post '/auth/:name/callback' do
  auth = request.env['omniauth.auth']
  # do whatever you want with the information!
  puts auth.inspect
end
