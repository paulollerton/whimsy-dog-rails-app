class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render 'index.json.jbuilder'
  end

  def show
    @review = Review.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @review = Review.new(
      username: params[:username],
      user_id: params[:user_id],
      stars: params[:stars],
      content: params[:content],
      caregiver_id: params[:caregiver_id],
      caregiver_username: params[:caregiver_username]
      )
    if @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @service.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @review = Review.find(params[:id])
      @review.username = params[:username] || @review.username
      @review.user_id = params[:user_id] || @review.user_id
      @review.stars = params[:stars] || @review.stars
      @review.content = params[:content] || @review.content
      @review.caregiver_id = params[:caregiver_id] || @review.caregiver_id
      @review.caregiver_username = params[:caregiver_username] || @review.caregiver_username
    if @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @service.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: {message: 'Review Deleted'}
  end

end
