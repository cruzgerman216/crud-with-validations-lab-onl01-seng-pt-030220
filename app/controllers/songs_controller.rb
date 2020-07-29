class SongsController < ApplicationController

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
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update

  end

  private

  def song_params
    params.permit(:song)
  end
end
