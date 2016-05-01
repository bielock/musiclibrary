class Genre < ActiveRecord::Base
	has_many :album
end
