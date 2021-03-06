class Task < ActiveRecord::Base
  attr_accessible :description, :project_id, :status
  belongs_to :project

  validates :project_id, presence: true
  validates :description, presence: true, uniqueness: true


  default_scope order: 'tasks.created_at ASC'
end
