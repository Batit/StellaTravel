class PrincipalController < ApplicationController
	def index 
		render layout: "principal"
	end
	def travel
		render layout: "travel"
	end
end