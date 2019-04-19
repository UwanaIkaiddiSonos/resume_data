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
    first_name: params[:input_first_name],
    last_name: params[:input_last_name],
    color: params[:input_color]
    )

    @student.save
    render 'show.json.jbuilder'
  end

  def update
    @student = Student.find_by(id: params[:id])

    @student.update(
      first_name: params[:input_first_name] || @student.first_name,
      last_name: params[:input_last_name] || @student.last_name,
      color: params[:input_color] || @student.color
    )
    render 'show.json.jbuilder'
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render "destroy.json.jbuilder"
  end
end
