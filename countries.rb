require "httparty"
require "json"


class Countries

	include HTTParty
	base_uri "https://restcountries.eu/rest/v2" #When using json, this base uri is not really needed.

	def all_countries 
		self.class.get('/all')
	end
end

