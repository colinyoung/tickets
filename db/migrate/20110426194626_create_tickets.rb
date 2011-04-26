class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :assigned_to_id
      t.integer :component_id
      t.boolean :from_support
      t.integer :importance
      t.integer :notification_list
      t.integer :number
      t.integer :priority
      t.string :reporter_id
      t.string :space_id
      t.integer :status
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
