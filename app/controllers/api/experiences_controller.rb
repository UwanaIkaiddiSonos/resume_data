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
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
      )
    @experience.save
    render 'show.json.jbuilder'
  end
end
