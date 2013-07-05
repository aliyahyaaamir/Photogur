class PicturesController < ApplicationController #inherits from ApplicationController which is a class given to us by Rails

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def new
	end

	def create
		  render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

end