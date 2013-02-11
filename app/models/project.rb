class Project < ActiveRecord::Base
	attr_accessible :project_name, :tasks_attributes
	before_save {|project| project.project_name = project_name.downcase}

	has_many :tasks, dependent: :destroy
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: :true

	validates :project_name, length: {minimum: 3}
	validates :project_name, presence: true
	validates :project_name, uniqueness: true
end
