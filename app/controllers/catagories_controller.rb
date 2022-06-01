class CatagoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  # GET /categories
  def index
    @categories = Catagory.all
  end

  # GET /catagories/1
  def show; end

  # GET /catagories/new
  def new
    @category = Catagory.new
  end

  # POST /categories
  def create
    @category = Catagory.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to catagories_url, notice: 'Category was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Catagory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.fetch(:catagory, {})
  end
end
