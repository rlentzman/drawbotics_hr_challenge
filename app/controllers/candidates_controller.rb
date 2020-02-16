class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def edit
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    redirect_to candidates_path
  end

  def update
  end

  def destroy
  end

  private

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :email, :skill_ids => [])
  end
end
