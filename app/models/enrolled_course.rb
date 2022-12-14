class EnrolledCourse < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :course, foreign_key: :courses_courses_id, class_name: 'Courses::Course', optional: true

end
