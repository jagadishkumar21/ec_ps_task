class TeacherController < ApplicationController
  before_action :find_course, only: [:enrolled_students]

  def show
    @teaching_courses = current_user.courses
  end

  def enrolled_students
    @all_enrolled_students = @course.students
  end

  private

  def find_course
    @course = Courses::Course.find(params[:id])
  end
end