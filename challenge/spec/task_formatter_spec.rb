require 'task_formatter'

describe TaskFormatter do
    
    describe TaskFormatter do
    it 'should return the task as incomplete' do
        task = double(:Task)
        allow(task).to receive(:complete?).and_return(false)
        allow(task).to receive(:title).and_return('Clean the dishes')
        formatter = TaskFormatter.new(task)
        expect(formatter.format()).to eq('[] Clean the dishes')
    end
    
    it 'should return the task as incomplete' do
        task = double(:Task)
        allow(task).to receive(:complete?).and_return(true)
        allow(task).to receive(:title).and_return('Clean the dishes')
        formatter = TaskFormatter.new(task)
        expect(formatter.format()).to eq('[x] Clean the dishes')
    end
end
end