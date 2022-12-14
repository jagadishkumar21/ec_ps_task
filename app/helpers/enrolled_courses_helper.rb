module EnrolledCoursesHelper

  def enroll_course
    enroll = EnrolledCourse.new
    enroll.student_id = current_user.id
    enroll.courses_courses_id = params[:id]
    enroll.marks = 0
    return (enroll.save)
  end

end
