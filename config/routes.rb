SearchEngine::Engine.routes.draw do
  get '/search/:search_term', to: 'search#new'
end
