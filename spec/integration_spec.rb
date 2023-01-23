require 'music_library'
require 'track'

describe 'integration' do
    it 'returns list of tracks if the keyword matches a title or artist' do
        track = Track.new("My heart will go on", "Celine Dion")
        library = MusicLibrary.new()
        library.add(track)
        expect(library.search('heart')).to eq [track]
        
    end
end