class RemoveTecherIdInCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses_courses, :teacher_id
  end
end
