class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = current_artist.songs.build
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to songs_path
  end

  def create
    @song = current_artist.songs.build

    if @song.save
      redirect_to @song, notice: "You added a new song"
    else
      render :new
    end
  end

end
