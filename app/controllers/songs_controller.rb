class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  
  def show
    find_song
  end
  
  def new
    @song = Song.new
  end
  
  def create 
    @song = Song.new(song_params)
    @song.save 
    redirect_to song_path(@song)
  end 

  def edit
    find_song
  end
  
  private 
  
  def find_song
    @song = Song.find(params[:id])
  end 
  
  def song_params 
    params.require(:song).permit(:name, :artist_id, :genre_id)
    #restricting the parameters that are passed to only the ones you really need to prevent hackers from accessing params and entering bad data 
  end 

  
end
