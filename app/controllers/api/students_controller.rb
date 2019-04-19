class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:id])
    respond_to do |format|
      format.json { render "show.json.jbuilder" }
      format.pdf do
        pdf = ResumeFile.new(@student)
        send_data pdf.render,
          filename: "Student.pdf",
          type: 'application/pdf', 
          disposition: "inline"
      end
    end
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
