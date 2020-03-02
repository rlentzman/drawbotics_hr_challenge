class ApplicationsController < ApplicationController
  # def show
  #   @application = Application.find(params[:id])
  # end

  def index
    @applications = Application.all

    @candidate = Candidate.find(params[:candidate_id])
    # @position = Position.find(params[:position_id])
    # @position = Position.where(id: params[:application][:position_id])
    # @recruiters = Recruiter.all
    # matching_recr_pos_skills
  end

  def new
    @candidate = Candidate.find(params[:candidate_id])
    @application = Application.new
  end

  def create
    @candidate = Candidate.find(params[:candidate_id])
    @positions = Position.where(id: params[:application][:position_id])
    @recruiters = Recruiter.all

    @positions.each do |position|
      @application = Application.new(candidate: @candidate, position: position)
      # matching_recr_pos_skills(position)
      render "candidates/show" and return unless @application.save
      next
    end
    # redirect_to candidate_application_path(params[:application_id])
    redirect_to candidates_path
  end

  # def matching_recr_pos_skills(position)
  #   @recruiters.each do |recruiter|
  #     recr_pos_match = {
  #       skills: (recruiter.skills & position.skills).count
  #     }
  #   end
  # end
end
