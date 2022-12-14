class AddForeignKeyToCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses_courses, :teacher, references: :users, index: true

  end
end
