ArchivesSpace::Application.routes.draw do

	match('/plugins/audits' => 'audits#index', :via => [:get])
	match('/plugins/audits/run' => 'audits#run', :via => [:get])

end
