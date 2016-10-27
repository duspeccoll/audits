class AuditsController < ApplicationController

	set_access_control "view_repository" => [:index, :run]

	def index
	end

	def run
		render :json => JSONModel::HTTP::get_json("/repositories/#{session[:repo_id]}/audits")
	end

end
