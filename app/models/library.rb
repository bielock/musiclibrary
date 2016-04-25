class Library < ActiveRecord::Base
	validates :name, presence: true
end
