require 'pry'
class ApplicationController < Sinatra::Base
  # Add your routes here
  # Post routes
  get "/recipes" do
    recipe = Recipe.all
    recipe.to_json(include: :reviews)
  end
  post "/recipes" do
    recipe = Recipe.create(
     name: params[:name],
      author: params[:author],
  ingredients: params[:ingredients]
    )
    recipe.to_json
  end
  patch "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.update(
      name: params[:name],
      author: params[:author],
     ingredients: params[:ingredients]
    )
    recipe.to_json
  end
  delete "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.delete
    recipe.to_json
  end
  delete "/reviews/:id" do
    recipe = Review.find(params[:id])
    recipe.delete
    recipe.to_json
  end
  # reader_reviews routes
  get "/reviews" do
    recipe = Review.all
    recipe.to_json
  end
  post "/reviews" do
    recipe = Review.create(
      comment: params[:comment],
      recipe_id: params[:recipe_id]
    )
    recipe.to_json
  end
end