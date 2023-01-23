require 'music_library'

describe MusicLibrary do
    
    it 'should add the track to the library' do
        track = FakeTrack.new('My heart will go on', 'Celine dion')
        library = MusicLibrary.new()
        expect(library.add(track)).to eq nil
    end
    
    it 'should return all the tracks' do
        track_1 = FakeTrack.new('My heart will go on', 'Celine dion')
        track_2 = FakeTrack.new('Tweenies', 'CBBC')
        library = MusicLibrary.new()
        library.add(track_1)
        library.add(track_2)
        expect(library.all()).to eq([track_1, track_2])
    end
    
    it 'should return a list of tracks that match the keywords' do
        track_1 = FakeTrack.new('My heart will go on', 'Celine dion')
        track_2 = FakeTrack.new('Tweenies', 'CBBC')
        library = MusicLibrary.new()
        library.add(track_1)
        library.add(track_2)
        expect(library.search('heart')).to eq([track_1])
        
    end
end
class FakeTrack
    def initialize(name, artist)
        @name = name
        @artist = artist
    end
    
    def name
        @name
    end
    
    def artist
        @artist
    end
    
    def matches?(keyword)
        @name.include?(keyword) || @artist.include?(keyword)
    end
      
    
end