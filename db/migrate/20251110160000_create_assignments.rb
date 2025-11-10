class CreateAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.date :due_date
      t.string :status
      t.string :course
      t.text :notes

      t.timestamps
    end
  end
end
