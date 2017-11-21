class TasksController < ApplicationController

before_action :set_task, only: [:show, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = set_task
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def completed?
    @task=set_task
    @task.completed
  end

  def completed=
    @task = set_task
    @task.completed = true
    @task.save
  end

  def update
    @task = set_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def delete
    @task = set_task
    @task.destroy
    redirect_to restaurants_path
  end

  private

  def set_task
    @task = Task.find(task_params)
  end

  def task_params
    params.require(:task).permit(:description, :complete, :completed=)
  end

end
