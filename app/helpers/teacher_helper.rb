module TeacherHelper
  def find_enrolled_course_id(student_id_number,course_id_number)
     EnrolledCourse.find_by(student_id: student_id_number, courses_courses_id: course_id_number)
  end
end
