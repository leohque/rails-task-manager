# frozen_string_literal: true

# TasksController
class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
    # list tasks
  end

  def show
    # view the details of a task
  end

  def new
    # add a new task (Form)
    @task = Task.new
  end

  def create
    # add a new task (Create in DB)
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    # (Form) edit a task (mark as completed / update title & details)
  end

  def update
    # (Patch) edit a task (mark as completed / update title & details)
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    # remove a task
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
