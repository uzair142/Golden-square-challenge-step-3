class TaskFormatter
  def initialize(task) 
      @task = task
  end

  def format
    if @task.complete?() == false
        "[] #{@task.title()}"
    else if @task.complete?() == true
        "[x] #{@task.title()}"
    end
    end
  end
  
end