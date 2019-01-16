class HomeController < ApplicationController

	def welcome
    @songs = Song.all.order(:created_at)
	end
end
