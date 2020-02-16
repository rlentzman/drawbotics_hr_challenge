class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end

  def show
    @position = Position.find(params[:id])
  end

  def new
    @position = Position.new
  end

  def create

    @position = Position.new(position_params)
    @position.save

    redirect_to positions_path
  end

  private

  def position_params
    params.require(:position).permit(:title, :company, :seniority, :skill_ids => [])
  end
end
