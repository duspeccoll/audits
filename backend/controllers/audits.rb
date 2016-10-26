class ArchivesSpaceService < Sinatra::Base

	Endpoint.get('/repositories/:repo_id/audits')
		.description("Resource metadata level audit")
		.params(["repo_id", :repo_id])
		.permissions(["view_repository"])
		.returns([200, "OK"]) \
	do
		colls = CrudHelpers.scoped_dataset(Resource, {})
		rows = Array.new
		colls.each do |coll|
			json = Resource.to_jsonmodel(coll[:id])
			row = {
				:id => coll[:id],
				:call_number => coll[:id_0],
				:title => coll[:title],
				:date => Audit.date?(json[:dates]),
				:extent => Audit.extent?(json[:extents]),
				:abstract => Audit.abstract?(json[:notes]),
				:agents => json[:linked_agents].length,
				:subjects => json[:subjects].length
			}

			rows.push(row)
		end

		json_response(:rows => rows)
	end

end
