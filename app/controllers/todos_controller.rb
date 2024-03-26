class TodosController < ApplicationController
  def index
    @todos = Todo.all
    render :index
  end

  def create
    @todo = Todo.create(
      user_id: params[:user_id],
      category_id: params[:category_id],
      title: params[:title],
      description: params[:description],
      deadline: params[:deadline],
      completed: params[:completed],
    )
    render :show
  end
end
