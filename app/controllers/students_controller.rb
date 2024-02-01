class StudentsController < ApplicationController
  before_action :set_students,only: %i[show edit update destroy]
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params_students)
    if @student.save
      redirect_to students_path,notice: "Student has been Created successfully"
    else
      render :new,status: :unprocessable_entity
    end
  end

  def show 
  end

  def edit
  end

  def update
    if @student.update(params_students)
      redirect_to students_path,notice: "Student has been Updated successfully"
    else
      render :new
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path,notice: "Student has been Deleted successfully"
  end

  private
  def params_students
    params.require(:student).permit(:first_name,:last_name,:email,:age,:address)
  end

  def set_students
    @student = Student.find(params[:id])
  end
end
