class Api::V1::UserPetsController < ApplicationController
  def index
    user_pets = UserPet.all
    render json: user_pets
  end

  def create
    user_pet = UserPet.create(user_pet_params)
    render json: user_pet
  end

  private
  def user_pet_params
    params.require(:user_pet).permit(:user_id, :pet_id)
  end
  
end