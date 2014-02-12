class SongsController < ApplicationController

  before_action :load_artist, only: [:new, :create, :edit]
  before_action :load_song, only: [:edit, :update, :destroy]

def new
  #@artist = Artist.find(params[:artist_id])
  @song = Song.new
  render(:new)
end

def create
  Song.create(song_params)
  redirect_to("/artists/#{params[:artist_id]}")
  #binding.pry
end

def edit
  render(:edit)
end

def update
  @song.update(song_params)
  redirect_to("/artists")
end

def destroy
  @song.destroy
  redirect_to("/artists")
end

private 

def load_artist
  @artist = Artist.find(params[:artist_id])
end


def load_song
  @song = Song.find(params[:id])
end

def song_params
  params.require(:song).permit(:title, :year, :artist_id)
  # return {
  #   title: params[:title], year: params[:year], artist_id: params[:artist_id]
  # }
end





end