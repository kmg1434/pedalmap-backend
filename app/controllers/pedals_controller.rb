class PedalsController < OpenReadController
  before_action :set_pedal, only: [:update, :destroy]

  # GET /pedals
  # GET /pedals.json
  def index
    @pedals = Pedal.all

    render json: @pedals
  end

  # GET /pedals/1
  # GET /pedals/1.json
  def show
    render json: Pedal.find(params[:id])
  end

  # POST /pedals
  # POST /pedals.json
  def create
    @pedal = current_user.pedals.build(pedal_params)

    if @pedal.save
      render json: @pedal, status: :created
    else
      render json: @pedal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pedals/1
  # PATCH/PUT /pedals/1.json
  def update
    if @pedal.update(pedal_params)
      head :no_content
    else
      render json: @pedal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pedals/1
  # DELETE /pedals/1.json
  def destroy
    @pedal.destroy

    head :no_content
  end

  def set_pedal
    @pedal = current_user.pedals.find(params[:id])
  end

  def pedal_params
    params.require(:pedal).permit(:name, :length, :width)
  end

  private :set_example, :pedal_params
end
