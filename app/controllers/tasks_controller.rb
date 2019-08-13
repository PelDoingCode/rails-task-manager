class TasksController < ApplicationController
  before_action :find_task, only: [ :show, :edit, :update, :destroy ]

  def show
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
    # attention faut passer le task_parems il connaitt
    # -----------------------
    # @tasks.update(params[:task])
    @tasks.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @tasks.destroy
    redirect_to tasks_path
  end

  private
  # protection from attack !!!

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @tasks = Task.find(params[:id])
  end
end
