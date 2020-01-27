class Api::PetsController < ApplicationController

  def index
    @pets = Pet.all
    render 'index.json.jbuilder'
  end

  def show
    @pet = Pet.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @pet = Pet.new(
      pet_name: params[:pet_name],
      user_id: params[:user_id],
      username: params[:username],
      breed: params[:breed],
      size: params[:size],
      age: params[:age],
      about_me: params[:about_me],
      notes: params[:notes]
      )
    if @pet.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @service.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @pet = Pet.find(params[:id])
      @pet.pet_name = params[:pet_name] || @pet.pet_name
      @pet.user_id = params[:user_id] || @pet.user_id
      @pet.username = params[:username] || @pet.username
      @pet.breed = params[:breed] || @pet.breed
      @pet.size = params[:size] || @pet.size
      @pet.age = params[:age] || @pet.age
      @pet.about_me = params[:about_me] || @pet.about_me
      @pet.notes = params[:notes] || @pet.notes
    if @pet.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @service.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    render json: {message: 'Pet Deleted'}
  end

end
