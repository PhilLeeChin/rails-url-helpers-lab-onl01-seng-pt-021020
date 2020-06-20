class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def active
    set_student
    @students.active = !@students.active
    @students.save
    redirect_to students_path(@student)
  private

    def set_student
      @student = Student.find(params[:id])
    end
end
