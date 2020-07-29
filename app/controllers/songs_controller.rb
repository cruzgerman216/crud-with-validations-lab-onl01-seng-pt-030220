class SongsController < ApplicationController

  def index
@songs = Song.all
  end
  def show
  end

  def new
  end

  def create

  end

  def update

  end

  private

  def song_params
  end
end
