class BoardsController < OpenReadController
  before_action :set_board, only: [:update, :destroy]

  # GET /boards
  # GET /boards.json
  def index
    @boards = Board.all

    render json: @boards
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
    render json: Board.find(params[:id])
  end

  # POST /boards
  # POST /boards.json
  def create
    @board = current_user.boards.build(board_params)

    if @board.save
      render json: @board, status: :created
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boards/1
  # PATCH/PUT /boards/1.json
  def update
    if @board.update(board_params)
      head :no_content
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @board.destroy

    head :no_content
  end

  def set_board
    @board = current_user.boards.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:text)
  end

  private :set_board, :board_params
end
