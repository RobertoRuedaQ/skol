class Search < ApplicationRecord
	def search_schools
		schools = School.all
 		schools = shools.where(["state LIKE ?", state]) if state.present?
 		schools = shools.where(["city LIKE ?", city]) if city.present?
 		schools = shools.where(["gender LIKE ?", gender]) if gender.present?
 		schools = shools.where(["levels LIKE ?", levels]) if levels.present?
 		schools = shools.where(["languages LIKE ?", languages]) if languages.present?
 		schools = shools.where(["owner LIKE ?", owner]) if owner.present?
 		return schools
 	end
end
 