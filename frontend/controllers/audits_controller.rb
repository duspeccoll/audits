class AuditsController < ApplicationController

	set_access_control "view_repository" => [:index]

	def index
	end

end
