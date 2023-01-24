require 'diary'
require 'secret_diary'

describe 'integration' do
    it 'should read the diary and return error due to it being locked' do
        entry = Diary.new('I feel good')
        diary = SecretDiary.new(entry)
        diary.lock()
        expect{diary.read()}.to raise_error "Go away!"
    end
    
    it 'should read the diary as it is unlocked' do
        entry = Diary.new('I feel good')
        diary = SecretDiary.new(entry)
        diary.unlock()
        expect(diary.read()).to eq([entry])
        
    end
end