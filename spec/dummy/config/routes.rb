Rails.application.routes.draw do
  mount SearchEngine::Engine => "/search_engine"
  root to: "home#index"
end
