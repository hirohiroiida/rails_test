class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save 
    redirect_to "/tasks/#{@task.id}"
  end

  def edit
    
  end

  def apdate

  end

  def destroy
    
  end

  def task_params
    params.require(:task).permit(:name)
  end

  
end



