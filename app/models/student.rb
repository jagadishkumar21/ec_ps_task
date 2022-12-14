class Student < User
    belongs_to :user, optional: true
    has_many :enrolled_courses, dependent: :destroy
    has_many :courses, class_name: "Courses::Course", through: :enrolled_courses
end
