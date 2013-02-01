class Project < ActiveRecord::Base
	has_many :tasks, dependent: :destroy

	attr_accessible :project_name
	before_save {|project| project.project_name = project_name.downcase }

	validates :project_name, length: {minimum: 3}
	validates :project_name, presence: true
	validates :project_name, uniqueness: true
end
