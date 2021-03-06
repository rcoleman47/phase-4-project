class HolesController < ApplicationController

  def index
    holes = Hole.all
    render json: holes
  end

  def show
    render json: hole
  end

  def update
    hole.update!(hole_params)
    render json: hole, status: 202
  end


  private 

  def hole_params
    params.permit(:number, :distance, :par, :tee_box_id, :handicap, :id)
  end

  def hole
    Hole.find(params[:id])
  end

end
