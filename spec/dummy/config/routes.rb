Rails.application.routes.draw do

  mount SearchEngine::Engine => "/search_engine"
end
