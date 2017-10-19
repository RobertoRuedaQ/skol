class School < ApplicationRecord
	geocoded_by :full_address
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
	
	def self.search(search)
	  where("school_name LIKE ?", "%#{search}%")
	end

	def full_address
		[address, city, state].compact.join(', ')
	end

	def coords
		"{lat:""#{latitude}, ""lng:""#{longitude}}"
	end
end
