class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @experience = Skill.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @skill = Skill.new(
    skill_name: params[:skill_name]
  )
    @skill.save
    render 'show.json.jbuilder'
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.skill_name = params[:skill_name] || @skill.skill_name
    @skill.save
    render 'show.json.jbuilder'
  end
end
