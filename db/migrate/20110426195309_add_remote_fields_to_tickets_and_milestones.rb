class AddRemoteFieldsToTicketsAndMilestones < ActiveRecord::Migration
  
  @@tables = [:tickets, :milestones]
  
  def self.up
    @@tables.each do |table|
      add_column table, :remote_created_at, :date
      add_column table, :remote_updated_at, :date
    end
  end

  def self.down
    @@tables.each do |table|
      remove_column table, :remote_created_at
      remove_column table, :remote_updated_at
    end    
  end
end
