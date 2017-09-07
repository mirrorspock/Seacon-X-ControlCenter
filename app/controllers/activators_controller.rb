class ActivatorsController < ApplicationController
  before_action :set_activator, only: [:show, :edit, :update, :destroy]

  # GET /activators
  # GET /activators.json
  def index
    @activators = Activator.all
  end

  # GET /activators/1
  # GET /activators/1.json
  def show
  end

  # GET /activators/new
  def new
    @activator = Activator.new
  end

  # GET /activators/1/edit
  def edit
  end

  # POST /activators
  # POST /activators.json
  def create
    @activator = Activator.new(activator_params)

    respond_to do |format|
      if @activator.save
        format.html { redirect_to @activator, notice: 'Activator was successfully created.' }
        format.json { render :show, status: :created, location: @activator }
      else
        format.html { render :new }
        format.json { render json: @activator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activators/1
  # PATCH/PUT /activators/1.json
  def update
    respond_to do |format|
      if @activator.update(activator_params)
        format.html { redirect_to @activator, notice: 'Activator was successfully updated.' }
        format.json { render :show, status: :ok, location: @activator }
      else
        format.html { render :edit }
        format.json { render json: @activator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activators/1
  # DELETE /activators/1.json
  def destroy
    @activator.destroy
    respond_to do |format|
      format.html { redirect_to activators_url, notice: 'Activator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activator
      @activator = Activator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activator_params
      params.require(:activator).permit(:name, :description, :commandline, :color)
    end
end
