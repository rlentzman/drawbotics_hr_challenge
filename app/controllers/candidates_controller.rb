class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
    @application = Application.new
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    redirect_to candidate_path(@candidate)
  end


  private

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :linkedin, :seniority, :email, :skill_ids => [])
  end
end
