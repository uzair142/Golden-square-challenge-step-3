class Track
  def initialize(title, artist) # title and artist are both strings
      @title = title
      @artist = artist
  end

  def matches?(keyword)
      if @title == keyword
          true
      else if @artist = keyword
          true
      else
          false
      end
  end
  end
end