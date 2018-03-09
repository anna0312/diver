class DivesController < ApplicationController
  before_action :set_dive, only: [:show, :update, :destroy]

  # GET /dives
  def index
    @dives = Dive.all

    render json: @dives
  end

  # GET /dives/1
  def show
    render json: @dive
  end

  # POST /dives
  def create
    @dive = Dive.new(dive_params)

    if @dive.save
      render json: @dive, status: :created, location: @dive
    else
      render json: @dive.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dives/1
  def update
    if @dive.update(dive_params)
      render json: @dive
    else
      render json: @dive.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dives/1
  def destroy
    @dive.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive
      @dive = Dive.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dive_params
      params.require(:dive).permit(:user_id, :location, :date, :max_depth, :duration, :psi_used, :weight_used, :rating, :notes, :make_public)
    end
end
