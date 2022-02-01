class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save 
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:name)
  end
end
