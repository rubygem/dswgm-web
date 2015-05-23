require 'bundler/setup'
require 'json'
require 'sinatra'
require 'sass'
require 'erb'
require 'sinatra/assetpack'
require 'tilt/erb'

class App < Sinatra::Application
	def initialize(app=nil)
		super(app)
	end

	register Sinatra::AssetPack
	assets do
		js :application, [
			'js/*.js'
		]

		css :application, [
			'css/*.css'
		]

		js_compression :jsmin
		css_compression :sass
	end

	# 404 Error!
	not_found do
	  status 404
	  erb :not_found, :layout => :layout
	end

	error do
	  erb :error, :layout => :layout
	end

	get '/' do
		redirect '/home'
	end

	get '/home' do
		erb :home, :layout => :layout
	end

	get '/create' do
		erb :create, :layout => :layout
	end

	get '/publish' do
		erb :publish, :layout => :layout
	end

	get '/instructions' do
		erb :instructions, :layout => :layout
	end

	get '/neocities' do
		erb :neocities, :layout => :layout
	end
	
	get '/gemma' do
		erb :gemma, :layout => :layout
	end
	
	get '/resources' do
		erb :resources, :layout => :layout
	end

	get '/cssintro' do
		erb :cssintro, :layout => :layout
	end

	get '/morecss' do
		erb :morecss, :layout => :layout
	end
end
