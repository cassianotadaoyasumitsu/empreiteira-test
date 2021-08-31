class Api::V1::ReactController < ApplicationController
  def index
    todos = React.order(updated_at: :desc)
    render json: reacts
  end

  def show
    todo = React.find(params[:id])
    render json: react
  end

  def create
    todo = React.new(todo_params)
    if react.save
      render json: react
    else
      render json: react.errors, status: 422
    end
  end

  def update
    todo = React.find(params[:id])
    if react.update(react_params)
      render json: react
    else
      render json: react.errors, status: 422
    end
  end

  def destroy
    if React.destroy(params[:id])
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: 422
    end
  end

  def destroy_all
    if React.destroy_all
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: 422
    end
  end

  private

  def react_params
    params.require(:react).permit(:name, :is_completed)
  end
end