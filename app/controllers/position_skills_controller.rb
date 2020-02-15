class PositionSkillsController < ApplicationController
  # def new
  #   @position = Position.find(params[:position_id])
  #   @position_skill = PositionSkill.new
  # end

  # def create
  #   @position = Position.find(params[:position_id])
  #   @skills = Skill.where(id: params[:position][:skill_ids])
  #   @skills.each do |skill|
  #     @position_skill = PositionSkill.new(position: @position, skill: skill)
  #     @position.skill = @position_skill
  #     if @position_skill.save
  #       next
  #     else
  #       render :new and return
  #     end
  #   end
  #   # redirect_to garden_path(@plant.garden)
  # end
end
