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
    @recruiters = Recruiter.all
    @position = Position.new(position_params)
    # top_recruiters(@position)
    skills_recruiters_position(@position)
    recruiters_array = seniority_recruiters_position(@position).reject do |recruiter|
      recruiter.skills_match[@position.title].to_i == 0
    end
    # recruiters_array = seniority_recruiters_position(@position)
    @position.top_recruiters = []
    @position.top_recruiters << recruiters_array.sort_by { |recruiter| recruiter.skills_match[@position.title] }.reverse!.first(3)
    @position.top_recruiters.flatten!
    @position.save
    redirect_to positions_path
  end

  # def destroy
  #   @position = Position.find(params[:id])
  #   @position.destroy!
  #   redirect_to positions_path
  # end

  def destroy
    @position = Position.find(params[:id])
    @position.destroy!
    respond_to do |format|
      format.html { redirect_to positions_path }
      format.js
    end
  end

  private

  def position_params
    params.require(:position).permit(:title, :company, :top_recruiters, :seniority, :skill_ids => [])
  end

  def skills_recruiters_position(position)
    @recruiters.each do |recruiter|
      # recruiter.skills_match = {}
      recruiter.skills_match[position.title] = (recruiter.skills & position.skills).length

      recruiter.save
    end
  end

  def seniority_recruiters_position(position)
    @recruiters.select do |recruiter|
      case position.seniority
      when 'senior'
        recruiter.seniority == 'senior'
      else
        recruiter.seniority == 'senior' || recruiter.seniority == 'mid'
      end
    end
  end

  # def top_recruiters(position)
  #   skills_recruiters_position(position)
  #   recruiters_array = seniority_recruiters_position(position).reject do |recruiter|
  #     recruiter.skills_match[position.title][:skills] == 0
  #   end
  #   position.top_recruiters << recruiters_array.sort_by { |recruiter| recruiter.skills_match[position.title][:skills] }.reverse!.first(3)
  #   position.top_recruiters.flatten!
  # end

      # @position.top_recruiters << recruiters_array.sort_by { |recruiter| recruiter.skills_match[@position.title] }.reverse!.first(3)

end

