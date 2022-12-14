# This migration comes from courses (originally 20221117115922)
class CreateCoursesCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_courses do |t|
      t.string :course_name
      t.integer :teacher_id

      t.timestamps
    end
  end
end
