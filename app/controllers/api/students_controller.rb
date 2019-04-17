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
  end

end
