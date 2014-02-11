class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render(:index)
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Song.where(artist_id: params[:id])
    render(:show)
  end

  def new
    render(:new)
  end

  def create
    Artist.create(name: params[:name], genre: params[:genre], photo_url: params[:photo_url])
    redirect_to("/artists")
  end


  def edit
    @artist = Artist.find(params[:id])
    render(:edit)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:name], genre: params[:genre], photo_url: params[:photo_url])
    redirect_to("/artists")
  end

  def destroy
   @artist = Artist.find(params[:id])
   @artist.destroy
   redirect_to("/artists")
  end




end
