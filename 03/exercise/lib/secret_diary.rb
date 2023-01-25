class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @entries = []
    @diary = diary
    @entries << @diary
    @status = 'locked'
  end

  def read
      fail 'Go away!' if @status == 'locked'
    if @status == 'unlocked'
      @entries
    end
    @entries
  end

  def lock
    @status = 'locked'
    nil
  end

  def unlock
    @status = 'unlocked'
    nil
  end
end