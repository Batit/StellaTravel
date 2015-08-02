class FlightsController < ApplicationController
	
	def initialize
		SabreDevStudio.configure do |c|
		  c.client_id     = 'V1:1234:ABCD:XYZ'
		  c.client_secret = 'SeKr1T'
		  c.uri           = 'https://api.test.sabre.com'
		end
	end
	def consult
		options = {
		  :origin        => 'ATL',
		  :destination 	 => 'LAS',
		  :departuredate => '2015-08-22',
		  :returndate    => '2015-08-23',
		  :limit		 => '5',
		  :lengthofstay  => '10'
		}
		fares = SabreDevStudio::Flight::Api.destination_air_shop(options)
		@fare_info = fares.fare_info

		render layout: "general"
	end
end
