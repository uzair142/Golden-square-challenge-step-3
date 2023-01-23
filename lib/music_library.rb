class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
      @library << track
     return nil
  end

  def all
    @library
  end
  
 def search(keyword)
    tracks = @library.select { |track| track.matches?(keyword)}
    unique = tracks.uniq()
    unique
end

  
end