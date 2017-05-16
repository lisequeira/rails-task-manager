class TasksController < ApplicationController

  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def index
    @tasks = Task.all
  end

  def edit
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path

  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
