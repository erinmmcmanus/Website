class ResourcesPageController < ApplicationController
	 def index 

	end 

	def show
		render params[:id]
	end

	def math
		render action: "math"
	end
end
