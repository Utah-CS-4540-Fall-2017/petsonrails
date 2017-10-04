class AnimalSubtypesController < ApplicationController
  before_action :set_animal_subtype, only: [:show, :edit, :update, :destroy]

  # GET /animal_subtypes
  # GET /animal_subtypes.json
  def index
    @animal_subtypes = AnimalSubtype.all
  end

  # GET /animal_subtypes/1
  # GET /animal_subtypes/1.json
  def show
  end

  # GET /animal_subtypes/new
  def new
    @animal_subtype = AnimalSubtype.new
  end

  # GET /animal_subtypes/1/edit
  def edit
  end

  # POST /animal_subtypes
  # POST /animal_subtypes.json
  def create
    @animal_subtype = AnimalSubtype.new(animal_subtype_params)

    respond_to do |format|
      if @animal_subtype.save
        format.html { redirect_to @animal_subtype, notice: 'Animal subtype was successfully created.' }
        format.json { render :show, status: :created, location: @animal_subtype }
      else
        format.html { render :new }
        format.json { render json: @animal_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_subtypes/1
  # PATCH/PUT /animal_subtypes/1.json
  def update
    respond_to do |format|
      if @animal_subtype.update(animal_subtype_params)
        format.html { redirect_to @animal_subtype, notice: 'Animal subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal_subtype }
      else
        format.html { render :edit }
        format.json { render json: @animal_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_subtypes/1
  # DELETE /animal_subtypes/1.json
  def destroy
    @animal_subtype.destroy
    respond_to do |format|
      format.html { redirect_to animal_subtypes_url, notice: 'Animal subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_subtype
      @animal_subtype = AnimalSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_subtype_params
      params.require(:animal_subtype).permit(:name, :animal_type_id)
    end
end
