require 'secret_diary'

describe SecretDiary do
    
    it 'should lock the diary and return nothing' do
        entry = double :Diary, contents: entry = 'I went to sleep', status: 'locked' 
        diary = SecretDiary.new(entry)
        expect(diary.lock()).to eq(nil)
    end
    
    it 'should unlock the diary and return nothing' do
        entry = double :Diary, contents: entry = 'I went to sleep', status: 'locked' 
        diary = SecretDiary.new(entry)
        expect(diary.unlock()).to eq(nil)
    end
    
    it 'should raise an error if the diary is locked' do
        diary = SecretDiary.new('I went to sleep')
        expect{diary.read()}.to raise_error("Go away!")
    end
    
    it 'should return the contents if the diary is unlocked' do
        entry = double(:fake_class, initialize: 'I went to sleep')
        diary = SecretDiary.new(entry.initialize())
        diary.unlock()
        expect(diary.read()).to eq(['I went to sleep'])
    end
end