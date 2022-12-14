module Courses
  class Course < ApplicationRecord
    validates :course_name,:teacher_id, presence: true

    has_many :enrolled_courses, foreign_key: :courses_courses_id, dependent: :destroy
    has_many :students, through: :enrolled_courses
    has_one :teacher, foreign_key: :id, primary_key: :teacher_id
  end
end


