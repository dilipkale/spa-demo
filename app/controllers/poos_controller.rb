class PoosController < ApplicationController
  before_action :set_poo, only: [:show, :edit, :update, :destroy]

  # GET /poos
  # GET /poos.json
  def index
    @poos = Poo.all

    render json: @poos
  end

  # GET /poos/1
  # GET /poos/1.json
  def show
    render json: @poo
  end

  # GET /poos/new
  def new
    @poo = Poo.new
  end

  # GET /poos/1/edit
  def edit
  end

  # POST /poos
  # POST /poos.json
  def create
    @poo = Poo.new(poo_params)

    
      if @poo.save
       
        format.json { render :show, status: :created, location: @poo }
      else
       
        format.json { render json: @poo.errors, status: :unprocessable_entity }
      end
    
  end

  # PATCH/PUT /poos/1
  # PATCH/PUT /poos/1.json
  def update
    respond_to do |format|
      if @poo.update(poo_params)
        format.html { redirect_to @poo, notice: 'Poo was successfully updated.' }
        format.json { render :show, status: :ok, location: @poo }
      else
        format.html { render :edit }
        format.json { render json: @poo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poos/1
  # DELETE /poos/1.json
  def destroy
    @poo.destroy
    respond_to do |format|
      format.html { redirect_to poos_url, notice: 'Poo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poo
      @poo = Poo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poo_params
      params.require(:poo).permit(:name)
    end
end
