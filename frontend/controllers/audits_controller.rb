class AuditsController < ApplicationController

	set_access_control "view_repository" => [:index, :audit]

	def index
	end

	def audit
		respond_to do |format|

			format.html {
				@audit_data = JSONModel::HTTP::get_json("/repositories/#{session[:repo_id]}/audits")
				@headers = ["ID", "Title", "Date", "Extent", "Abstract", "Agents", "Subjects", "Container"]
				render "audits/audit"
			}

			format.json {
				render :json => JSONModel::HTTP::get_json("/repositories/#{session[:repo_id]}/audits")
			}
		end
	end

end
