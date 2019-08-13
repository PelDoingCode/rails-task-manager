class TasksController < ApplicationController

def show
  @tasks = Task.find(params[:id])
end

def index
  @tasks = Task.all
end

def new
  @task = Task.new
end

def create
  task = Task.new(task_params)
  task.save
  redirect_to tasks_path
end

def edit
end


def update
end

def delete
end

def destroy
end

private
# protection from attack !!!

def task_params
  params.require(:task).permit(:title, :details, :completed)
end


end
