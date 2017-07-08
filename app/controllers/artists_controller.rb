class ArtistsController < ApplicationController
def index
  @artists = Artist.all
end

  def Show
    @artist = Artist.find(params[:id])
  end
end
