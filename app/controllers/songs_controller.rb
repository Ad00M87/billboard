class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :update, :edit, :destroy]

  def index
    @song = @artist.songs.all
  end

  def show
  end

  def new
    @song = @artist.songs.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to artist_song_path(@artist, @song)
    else
      render partial: 'form'
    end
  end

  def update
    if @song.update(song_params)
      redirect_to artist_songs_path(@artist, @song)
    else
      render partial: 'form'
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path(@artist)
  end

  private

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :genre, :billboard_chart_id, :artist_id)
    end

end
