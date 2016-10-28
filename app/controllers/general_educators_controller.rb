class GeneralEducatorsController < ApplicationController
  before_action :set_general_educator, only: [:show, :edit, :update, :destroy]

  # GET /general_educators
  # GET /general_educators.json
  def index
    @general_educators = GeneralEducator.all
  end

  # GET /general_educators/1
  # GET /general_educators/1.json
  def show
  end

  # GET /general_educators/new
  def new
    @general_educator = GeneralEducator.new
  end

  # GET /general_educators/1/edit
  def edit
  end

  # POST /general_educators
  # POST /general_educators.json
  def create
    @general_educator = GeneralEducator.new(general_educator_params)

    respond_to do |format|
      if @general_educator.save
        format.html { redirect_to @general_educator, notice: 'General educator was successfully created.' }
        format.json { render :show, status: :created, location: @general_educator }
      else
        format.html { render :new }
        format.json { render json: @general_educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_educators/1
  # PATCH/PUT /general_educators/1.json
  def update
    respond_to do |format|
      if @general_educator.update(general_educator_params)
        format.html { redirect_to @general_educator, notice: 'General educator was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_educator }
      else
        format.html { render :edit }
        format.json { render json: @general_educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_educators/1
  # DELETE /general_educators/1.json
  def destroy
    @general_educator.destroy
    respond_to do |format|
      format.html { redirect_to general_educators_url, notice: 'General educator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_educator
      @general_educator = GeneralEducator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_educator_params
      params.require(:general_educator).permit(:name, :rating)
    end
end
