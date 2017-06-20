Rails.application.routes.draw do	
  # We were going to follow the RESTful conventions for this model named Article.
  # follow this convenstion, the URL for creating a new article would be 
  # http://localhost:3000/articles/new
  resources :articles 
end
