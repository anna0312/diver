class DivesController < ApplicationController
  before_action :set_dife, only: [:show, :update, :destroy]

  # GET /dives
  def index
    @dives = Dive.all

    render json: @dives
  end

  # GET /dives/1
  def show
    render json: @dife
  end

  # POST /dives
  def create
    @dife = Dive.new(dife_params)

    if @dife.save
      render json: @dife, status: :created, location: @dife
    else
      render json: @dife.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dives/1
  def update
    if @dife.update(dife_params)
      render json: @dife
    else
      render json: @dife.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dives/1
  def destroy
    @dife.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dife
      @dife = Dive.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dife_params
      params.require(:dife).permit(:user_id, :location, :date, :max_depth, :duration, :psi_used, :weight_used, :rating, :notes, :make_public)
    end
end