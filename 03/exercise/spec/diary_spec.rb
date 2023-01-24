require 'diary'

describe Diary do
    
    it 'should return the contents of the diary' do
        entry = Diary.new('I went to sleep')
        expect(entry.read()).to eq ('I went to sleep')
    end 
end