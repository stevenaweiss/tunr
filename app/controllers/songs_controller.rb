class SongsController < ApplicationController


def new
  @artist = Artist.find(params[:artist_id])
  render(:new)
end

def create
  Song.create(title: params[:title], year: params[:year], artist_id: params[:artist_id])
  redirect_to("/artists/#{params[:artist_id]}")
end

def edit
  @artist = Artist.find(params[:artist_id])
  @song = Song.find(params[:id])
  render(:edit)

end

def update
  @song = Song.find(params[:id])
  @song.update(title: params[:title], year: params[:year], artist_id: params[:artist_id])
  redirect_to("/artists")
end

def destroy
  @song = Song.find(params[:id])
  @song.destroy
  redirect_to("/artists")
end



end