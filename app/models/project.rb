class Project < ActiveRecord::Base
  attr_accessible :project_name

	validates :project_name length: {minimum: 3
	validates :project_name, presence: true
	validates :project_name, uniqueness: true
end
