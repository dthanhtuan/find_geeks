class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
