class ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
  end

  def new
    @candidate = Candidate.find(params[:candidate_id])
    @application = Application.new
  end

  def create
    @candidate = Candidate.find(params[:candidate_id])
    @positions = Position.where(id: params[:application][:position_id])

    @positions.each do |position|
      @application = Application.new(candidate: @candidate, position: position)
      if @application.save
        next
      else
        render "candidates/show" and return
      end
    end
    # redirect_to candidate_application_path(params[:application_id])
    redirect_to candidate_path(@candidate)
  end
end
