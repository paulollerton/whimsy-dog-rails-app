class Api::ServicesController < ApplicationController

  def index
    @services = Service.all
    render 'index.json.jbuilder'
  end

  def show
    @service = Service.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @service = Service.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url],
      time: params[:time]
      )
    if @service.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @service.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @service = Service.find(params[:id])
      @service.name = params[:name] || @service.name
      @service.price = params[:price] || @service.price
      @service.description = params[:description] || @service.description
      @service.image_url = params[:image_url] || @service.image_url
      @service.time = params[:time] || @service.time
    if @service.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @service.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    render json: {message: 'Service Deleted'}
  end

end
