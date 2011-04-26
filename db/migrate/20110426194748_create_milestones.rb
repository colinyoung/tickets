class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.string :created_by
      t.text :description
      t.date :due_date
      t.boolean :is_completed
      t.integer :release_level
      t.text :release_notes
      t.string :space_id
      t.string :title
      t.string :updated_by

      t.timestamps
    end
  end

  def self.down
    drop_table :milestones
  end
end
