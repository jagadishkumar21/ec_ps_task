class CreateEnrolledCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :enrolled_courses do |t|
      t.references :courses_courses, foreign_key: true
      t.integer :marks

      t.timestamps
    end
  end
end
