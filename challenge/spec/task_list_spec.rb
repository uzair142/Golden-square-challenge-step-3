require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  
  it 'returns the tasks' do
    task_list = TaskList.new()
    task_list.add('Clean the dishes')
    expect(task_list.all()).to eq ['Clean the dishes']
  end
  
  it 'should return false if the tasklist is empty' do
    task_list = TaskList.new()
    expect(task_list.all_complete?()).to eq false
  end
  
  it 'should return true when the tasklist is checked' do
    task_list = TaskList.new()
    faketask = FakeTask.new("Clean the Dishes")
    task_list.add(faketask)
    expect(task_list.all_complete?).to eq true
  end
end

class FakeTask
  
  def initialize(title)
    @title = title
    @complete = true
  end
  
  def complete?
    return @complete
  end
    
end
  
  