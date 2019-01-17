class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:name, :year))
    if @album.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def show
    @album = Album.find(params[:id])
    @songs = Song.where(album: @album)
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:name, :year))
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to root_path
  end

end
