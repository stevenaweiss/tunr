class ArtistsController < ApplicationController


  before_action :load_artist, only: [:show, :edit, :update, :destroy]

    def index
      @artists = Artist.all
      render(:index)
    end

    def show
      @songs = Song.where(artist_id: params[:id])
      render(:show)
    end

    def new
      @artist = Artist.new
      render(:new)
    end

    def create
      Artist.create(artist_params)
      redirect_to("/artists")
    end


    def edit
      render(:edit)
    end

    def update
      @artist.update(artist_params)
      redirect_to("/artists")
    end

      def destroy
        @artist.destroy
        redirect_to("/artists")
      end

    private

      def load_artist
        @artist = Artist.find(params[:id])
      end

      def artist_params
        params.require(:artist).permit(:name, :genre, :photo_url)
      end


end
