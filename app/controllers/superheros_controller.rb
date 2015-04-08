class SuperherosController < ApplicationController
  before_action :set_superhero, only: [:show, :edit, :update, :destroy]

  # GET /superheros
  # GET /superheros.json
  def index
    @superheros = Superhero.all
  end

  # GET /superheros/1
  # GET /superheros/1.json
  def show
    @superhero = Superhero.find_by(id: params[:id])
  end

  # GET /superheros/new
  def new
    @superhero = Superhero.new
  end

  # GET /superheros/1/edit
  def edit
    @superhero = Superhero.find_by(id: params[:id])
  end

  # POST /superheros
  # POST /superheros.json
  def create

    @superhero = Superhero.create(superhero_params)
    redirect_to superhero_path(@superhero)
  end

  # PATCH/PUT /superheros/1
  # PATCH/PUT /superheros/1.json
  def update

    @superhero = Superhero.find_by(id: params[:id])
    @superhero.update_attributes(superhero_params)
    redirect_to superhero_path(superhero_params)
  end

  # DELETE /superheros/1
  # DELETE /superheros/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superhero
      @superhero = Superhero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def superhero_params
      params.require(:superhero).permit(:name, :specialty, :bio, :overall_rating)
      # params[:superhero]
    end
end
