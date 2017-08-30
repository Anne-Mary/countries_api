require_relative "../countries.rb"

describe Countries do

	before(:all) do 
		@countries = Countries.new
		@response = @countries.all_countries
		@file = JSON.parse(HTTParty.get("https://restcountries.eu/rest/v2/all").body)
	end


	# it"should have countries in an array" do
	# 	expect(@file.class).to be Array
	# end

	it"should have the key name with the value Afghanistan"do
		expect(@file[0]["name"]).to eq "Afghanistan"
	end
end
