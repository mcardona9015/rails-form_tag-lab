class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @students = Student.all
    @student = Student.new

  end

  def create
    new_student = Student.create(student_params)
    redirect_to "/students/#{new_student.id}"
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
