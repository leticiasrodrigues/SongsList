class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params.require(:song).permit(:name))
    if @song.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(params.require(:song).permit(:name))
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    song = Song.find(params[:id]) #nao precisa do @ pq nao tem a view
		song.destroy
		redirect_to root_path
  end

end
