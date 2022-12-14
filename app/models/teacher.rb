class Teacher < User
    belongs_to :user, optional: true
    has_many :courses, class_name: "Courses::Course"

end
