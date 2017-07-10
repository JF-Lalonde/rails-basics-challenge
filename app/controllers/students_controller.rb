class StudentsController < ApplicationController

  def index
    @students = Student.pluck(:last_name, :first_name)
  end

  def show
    @student = Student.find(params[:id])
  end
end
