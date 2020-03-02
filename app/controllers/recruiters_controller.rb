class RecruitersController < ApplicationController
  def index
    @recruiters = Recruiter.all
  end

  def new
    @recruiter = Recruiter.new
  end

  def create
    @recruiter = Recruiter.new(recruiter_params)
    render :new and return unless @recruiter.save
    # if @recruiter.save
    #   next
    # else
    #   render :new and return
    # end

    redirect_to recruiters_path
  end

  private

  def recruiter_params
    params.require(:recruiter).permit(:first_name, :last_name, :seniority, :email, :skill_ids => [])
  end
end
