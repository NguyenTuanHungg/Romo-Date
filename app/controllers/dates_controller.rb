class DatesController < ApplicationController
  before_action :set_date, only: %i[ show edit update destroy ]

  # GET /dates or /dates.json
  def index
    @dates = Date.all
  end

  # GET /dates/1 or /dates/1.json
  def show
  end

  # GET /dates/new
  def new
    @date = Date.new
  end

  # GET /dates/1/edit
  def edit
  end

  # POST /dates or /dates.json
  def create
    @date = Date.new(date_params)

    respond_to do |format|
      if @date.save
        format.html { redirect_to date_url(@date), notice: "Date was successfully created." }
        format.json { render :show, status: :created, location: @date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dates/1 or /dates/1.json
  def update
    respond_to do |format|
      if @date.update(date_params)
        format.html { redirect_to date_url(@date), notice: "Date was successfully updated." }
        format.json { render :show, status: :ok, location: @date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dates/1 or /dates/1.json
  def destroy
    @date.destroy

    respond_to do |format|
      format.html { redirect_to dates_url, notice: "Date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date
      @date = Date.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_params
      params.require(:date).permit(:date)
    end
end
