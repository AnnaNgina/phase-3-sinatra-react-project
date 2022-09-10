class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #recipe route
  get "/recipes" do
   recipes = Recipe.all
   recipes.to_json 
  end

  post "/recipes" do
    reserved = Recipe.create(
      name: params[:name],
      author: params[:author]
      
    )
    reserved.to_json
end

patch "/recipes/:id" do
  recipe = Recipe.find(params[:id])
    recipe.update(
      name: params[:name],
      author: params[:author]
    )
    recipe.to_json
  end

  delete "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
  end

  #review routes
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  post "/reviews" do
    new_review = Review.create(
      body: params[:body]
    )
    new_review.to_json
  end

  patch "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.update(
      comment: params[:comment]
    )
    reviews.to_json
  end

  delete "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.destroy
    reviews.to_json
  end
  
end




