class StudentController < ApplicationController

  def index

  end

  def show
    @enrolled_courses =  current_user.enrolled_courses
  end

end
