ArchivesSpace::Application.routes.draw do

	match('/plugins/audits' => 'audits#index', :via => [:get])
	match('/plugins/audits/audit' => 'audits#audit', :via => [:get])

end
