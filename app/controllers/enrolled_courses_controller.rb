class EnrolledCoursesController < ApplicationController
  include  EnrolledCoursesHelper

  def index
    @available_courses = Courses::Course.all
  end

  def edit
    @enrolled_course = EnrolledCourse.find(params[:id])

  end

  def update
    @enrolled_course = EnrolledCourse.find(params[:id])
    if @enrolled_course.update(check_params)

      redirect_to enrolled_students_path( @enrolled_course.course)
    else
      redirect_to enrolled_students_path( @enrolled_course.course)
    end

  end

  def create

    if enroll_course
      redirect_to student_show_path
      flash[:notice] = "Successfully enrolled in a new course"
    else
      redirect_to student_show_path
      flash[:notice] = " Enrolling a new course is failed"
    end
  end

  def destroy
    @enrolled_course = EnrolledCourse.find_by(courses_courses_id: params[:id])
    if @enrolled_course.destroy
      redirect_to student_show_path
      flash[:notice] = " Deleted a course successfully"
    else
      redirect_to student_show_path
      flash[:notice] = " Deleted a course is unsuccessfully"
    end
  end

  private

  def check_params
    params.require(:enrolled_course).permit(:id, :marks)
  end

end
