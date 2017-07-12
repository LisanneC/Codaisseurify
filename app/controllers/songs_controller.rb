class SongsController < ApplicationController
  #before_action :set_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params.merge(artist_id: params[:artist_id]))
    if @song.save
    redirect_to artist_path(params[:artist_id])
    else
      render 'new'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(params[:artist_id])
  end

  private
  def song_params
    params.require(:song).
    permit(:title, :year_of_release, :artist_id)
  end

end
