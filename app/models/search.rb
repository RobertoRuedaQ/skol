class Search < ApplicationRecord
	def schools
		@schools ||= find_schools
	end

private
	def find_schools
		schools = School.all
 		schools = schools.where(["state LIKE ?", state]) if state.present?
 		schools = schools.where(["city LIKE ?", city]) if city.present?
 		schools = schools.where(["gender LIKE ?", gender]) if gender.present?
 		schools = schools.where(["levels LIKE ?", levels]) if levels.present?
 		schools = schools.where(["languages LIKE ?", languages]) if languages.present?
 		schools = schools.where(["owner LIKE ?", owner]) if owner.present?
 		return schools
 	end
end
 