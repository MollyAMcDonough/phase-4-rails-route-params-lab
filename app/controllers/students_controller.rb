class StudentsController < ApplicationController
  def name_search
    byebug
  end

  def index
    if params.include?(:name)
      students = Student.where("lower(first_name) = ? OR lower(last_name) = ?", params[:name].downcase, params[:name].downcase)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

  
end
