ArchivesSpace::Application.routes.draw do

	match('/plugins/audits' => 'audits#index', :via => [:get])

end
