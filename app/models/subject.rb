class Subject < ActiveRecord::Base
	has_many :users, through: :user_subjects
	has_many :user_subjects

	validates :name, presence: true
	validates :description, presence: true


end

