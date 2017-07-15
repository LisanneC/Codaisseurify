class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_artist

  def index
    render status: 200, json: {
      songs: @artist.songs
    }.to_json
  end

  def show
    song = Song.find(params[:id])

    render status: 200, json: {
      song: @artist.songs
    }.to_json
  end

  def create
    song = Song.new(song_params.merge(artist_id: params[:artist_id]))

    if song.save
      render status: 201, json: {
        message: "Song added",
        song: @artist.songs
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song deleted"
    }.to_json
  end

  private

  def song_params
    params.require(:song).permit(:title, :year_of_release)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
