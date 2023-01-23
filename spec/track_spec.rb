require 'track'

describe Track do
    
    it 'should return true if the keyword matches the title or artist' do
        track = Track.new('My heart will go on', 'Celine Dion')
        
        expect(track.matches?('heart')).to eq(true)
    end
end

