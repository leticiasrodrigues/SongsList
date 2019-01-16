class HomeController < ApplicationController

	def welcome
    @songs = Song.all.order(:created_at)
    @albums = Album.all.order(:name)
	end
end
