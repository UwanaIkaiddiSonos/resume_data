class CreateSkillStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_students do |t|
      t.integer :skill_id
      t.integer :student_id

      t.timestamps
    end
  end
end
