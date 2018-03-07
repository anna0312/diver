class DipsController < ApplicationController
  before_action :set_dip, only: [:show, :update, :destroy]

  # GET /dips
  def index
    @dips = Dip.all

    render json: @dips
  end

  # GET /dips/1
  def show
    render json: @dip
  end

  # POST /dips
  def create
    @dip = Dip.new(dip_params)

    if @dip.save
      render json: @dip, status: :created, location: @dip
    else
      render json: @dip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dips/1
  def update
    if @dip.update(dip_params)
      render json: @dip
    else
      render json: @dip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dips/1
  def destroy
    @dip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dip
      @dip = Dip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dip_params
      params.require(:dip).permit(:user_id, :location, :date, :max_depth, :duration, :psi_used, :weight_used, :rating, :notes, :make_public)
    end
end
