class AddColoumnToEnrolledCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :enrolled_courses, :student, references: :users, index: true

  end
end
