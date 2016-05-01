class RemoveColumn < ActiveRecord::Migration
	def self.up
  		remove_column :genres, :album_id
	end
end
