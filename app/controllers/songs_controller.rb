class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def index;end

  def show; end

  def new
    @song = current_artist.songs.build
  end

  def create
    @song = current_artist.songs.build

    if @song.save
      redirect_to @song, notice: "You added a new song"
    else
      render :new
    end
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

end
