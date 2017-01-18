class VelcrosController < ApplicationController
  before_action :set_velcro, only: [:update, :destroy]

  # GET /velcros
  # GET /velcros.json
  def index
    @velcros = Velcro.all

    render json: @velcros
  end

  # GET /velcros/1
  # GET /velcros/1.json
  def show
    render json: Velcro.find(params[:id])
  end

  # POST /velcros
  # POST /velcros.json
  def create
    @velcro = Velcro.create(velcro_params)

    if @velcro.save
      render json: @velcro, status: :created
    else
      render json: @velcro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /velcros/1
  # PATCH/PUT /velcros/1.json
  def update
    if @velcro.update(velcro_params)
      head :no_content
    else
      render json: @velcro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /velcros/1
  # DELETE /velcros/1.json
  def destroy
    @velcro.destroy

    head :no_content
  end

  def set_velcro
    @velcro = Velcro.find(params[:id])
  end

  def velcro_params
    params.require(:velcro).permit(:board_id, :pedal_id)
  end

  private :set_velcro, :velcro_params
end
