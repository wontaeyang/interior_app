class AddIndexToModels < ActiveRecord::Migration
  def change
  	add_index :users, [:username]
  	add_index :projects, [:project_name, :created_at]
  end
end
