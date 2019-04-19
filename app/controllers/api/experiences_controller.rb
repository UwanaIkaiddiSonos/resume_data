class Api::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @experience = Experience.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create

  end
end
