class AddIndexOnIssuesPosition < ActiveRecord::Migration
  def self.up
    add_index :issues, :position 
    change_column :issues, :position, :integer, :default => 0 
  end

  def self.down
    remove_index :issues, :position 
  end
end
