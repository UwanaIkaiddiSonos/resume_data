class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @student = Student.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    short_bio: params[:short_bio],
    linkedin: params[:linkedin],
    twitter: params[:twitter],
    website: params[:website],
    resume: params[:resume],
    github: params[:github],
    photo: params[:photo]
    )

    @student.save
    render 'show.json.jbuilder'
  end

  # def update
  #   @student = Student.find_by(id: params[:id])

  #   @student.update(
  #     first_name: params[:input_first_name] || @student.first_name,
  #     last_name: params[:input_last_name] || @student.last_name,
  #     color: params[:input_color] || @student.color
  #   )
  #   render 'show.json.jbuilder'
  # end

  # def destroy
  #   @student = Student.find_by(id: params[:id])
  #   @student.destroy
  #   render "destroy.json.jbuilder"
  # end
end
