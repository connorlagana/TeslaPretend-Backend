class GaragesController < ApplicationController
  before_action :set_garage, only: [:show, :update, :destroy]

  # GET /garages
  def index
    @garages = current_user.garages
    json_response(@garages)
  end

  # POST /garages
  def create
    @garage = current_user.garages.create!(garage_params)
    json_response(@garage, :created)
  end

  # GET /garages/:id
  def show
    json_response(@garage)
  end

  # PUT /garages/:id
  def update
    @garage.update(garage_params)
    json_response(status: 'SUCCESS', message: 'updated the garage', data: @garage.title)
  end

  # DELETE /garages/:id
  def destroy
    @garage.destroy
    json_response(status: 'SUCCESS', message: 'deleted the garage', data: @garage.title)

  end

  private

  def garage_params
    # whitelist params
    params.permit(:title)
  end

  def set_garage
    @garage = Garage.find(params[:id])
  end
end
