class ArtistsController < ApplicationController
  @artist = Artist.find(params[:id])
end
