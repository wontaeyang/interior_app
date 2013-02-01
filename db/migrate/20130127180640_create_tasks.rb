class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :project_id
      t.timestamps
    end
    add_index :tasks, [:description]
  end
end
