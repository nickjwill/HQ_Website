class AfternoonsController < ApplicationController
  before_action :set_afternoon, only: [:show, :edit, :update, :destroy]

  # GET /afternoons
  # GET /afternoons.json
  def index
    @afternoons = Afternoon.all
  end

  # GET /afternoons/1
  # GET /afternoons/1.json
  def show
  end

  # GET /afternoons/new
  def new
    @afternoon = Afternoon.new
  end

  # GET /afternoons/1/edit
  def edit
  end

  # POST /afternoons
  # POST /afternoons.json
  def create
    @afternoon = Afternoon.new(afternoon_params)

    respond_to do |format|
      if @afternoon.save
        format.html { redirect_to @afternoon, notice: 'Afternoon was successfully created.' }
        format.json { render :show, status: :created, location: @afternoon }
      else
        format.html { render :new }
        format.json { render json: @afternoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /afternoons/1
  # PATCH/PUT /afternoons/1.json
  def update
    respond_to do |format|
      if @afternoon.update(afternoon_params)
        format.html { redirect_to @afternoon, notice: 'Afternoon was successfully updated.' }
        format.json { render :show, status: :ok, location: @afternoon }
      else
        format.html { render :edit }
        format.json { render json: @afternoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afternoons/1
  # DELETE /afternoons/1.json
  def destroy
    @afternoon.destroy
    respond_to do |format|
      format.html { redirect_to afternoons_url, notice: 'Afternoon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_afternoon
      @afternoon = Afternoon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def afternoon_params
      params.require(:afternoon).permit(:title, :body)
    end
end
