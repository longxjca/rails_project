Rails.application.routes.draw do
  # get 'people/index'
  # get 'people/show'
  # get 'films/index'
  # get 'films/show'
  # get 'planets/index'
  # get 'planets/show'
  # get 'species/index'
  # get 'species/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "people#index"
  get "people", to: "people#index"
  get "people/:id", to: "people#show", id: /\d+/, as: "person"

  get "species", to: "species#index"
  get "species/:id", to: "species#show", id: /\d+/, as: "specie"

  get "planets", to: "planets#index"
  get "planets/:id", to: "planets#show", id: /\d+/, as: "planet"

  get "films", to: "films#index"
  get "films/:id", to: "films#show", id: /\d+/, as: "film"

end
