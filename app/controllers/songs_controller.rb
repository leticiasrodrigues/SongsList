class SongsController < ApplicationController

  def new
    @song = Song.new
    @albums = Album.all
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :album_id))
    if @song.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
    @albums = Album.all
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(params.require(:song).permit(:name, :album_id))
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    puts "vdqujd"
    song = Song.find(params[:id]) #nao precisa do @ pq nao tem a view
		song.destroy
		redirect_to root_path
  end

end
