class AdminController < ApplicationController
  def index
  end

  def students_list
    @all_students = Student.all
  end

  def teacher_list
    @all_teachers = Teacher.all
  end
  def student_info
    @student = Student.find(params[:id])
    @enrolled_courses = @student.enrolled_courses
  end
  def teacher_info
    @teacher = Teacher.find(params[:id])
    @teaching_courses = @teacher.courses
  end

end
