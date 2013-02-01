class Task < ActiveRecord::Base
  attr_accessible :description, :project_id
  belongs_to :project

  validates :project_id, presence: true
  validates :description, presence: true

  default_scope order: 'tasks.created_at DESC'
end
