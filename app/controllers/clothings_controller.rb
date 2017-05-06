class ClothingsController < ApplicationController
  before_action :authenticate_user!
  
  # GET /clothings
  def index
    @clothings = Clothing.all
  end

  # GET /clothings/1
  def show
    @clothing = Clothing.find(params[:id])
  end

  # GET /clothings/new
  def new
    @clothing = Clothing.new
  end

  # GET /clothings/1/edit
  def edit
    @clothing = Clothing.find(params[:id])
  end

  # POST /clothings
  def create
    @clothing = Clothing.new(clothing_params)

    if @clothing.save
      redirect_to @clothing, notice: 'Clothing was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clothings/1
  def update
    @clothing = Clothing.find(params[:id])
    if @clothing.update(clothing_params)
      redirect_to @clothing, notice: 'Clothing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clothings/1
  def destroy
    @clothing = Clothing.find(params[:id])
    @clothing.destroy
    redirect_to clothings_url, notice: 'Clothing was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def clothing_params
    params.fetch(:clothing, {})
  end
end
