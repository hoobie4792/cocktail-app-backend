class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end 

  def create
    user = User.new(email: params['email'])
    user.save
    render json: user
  end 

  def login
    user = User.find_by(email: params['email'])
        if user != nil
            render json: user
        else 
            render json: { errors: ['User Not Found'] }
        end
  end 

  def user_favorites
    user = User.find_by(id: params[:id])
    cocktails_for_user_favorites = user.favorites.map { |favorite| favorite.cocktail }
    render json: cocktails_for_user_favorites.as_json(include: [:ingredients, :cocktailIngredients])
  end


  def update
    user.update(user_params)
    if user.save
      render json: user, status: :accepted
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  private

  def user_params
    params.permit(:title, :content)
  end

  def find_user
    user = User.find(params[:id])
  end
end
