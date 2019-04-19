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
end
