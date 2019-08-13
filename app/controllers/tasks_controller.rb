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

end

def edit
end


def update
end

def delete
end

def destroy
end


end
