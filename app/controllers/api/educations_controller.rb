class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @education = Education.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create 
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
    )
    @education.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @education = Education.find_by(id: the_id)
    @education.update(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @education = Education.find_by(id: the_id)
    @education.destroy
    render 'show.json.jbuilder'
  end
end
