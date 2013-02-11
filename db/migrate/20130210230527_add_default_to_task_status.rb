class AddDefaultToTaskStatus < ActiveRecord::Migration
  def self.up
  	change_column :tasks, :status, :boolean, default: :true
  end

  def self.down
  end

end
