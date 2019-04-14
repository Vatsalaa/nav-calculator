class FundHistoriesController < ApplicationController
  before_action :set_fund_history, only: [:show, :edit, :update, :destroy]

  # GET /fund_histories
  # GET /fund_histories.json
  def index
    @fund_histories = FundHistory.all
  end

  # GET /fund_histories/1
  # GET /fund_histories/1.json
  def show
  end

  # GET /fund_histories/new
  def new
    @fund_history = FundHistory.new
  end

  # GET /fund_histories/1/edit
  def edit
  end

  # POST /fund_histories
  # POST /fund_histories.json
  def create
    @fund_history = FundHistory.new(fund_history_params)

    respond_to do |format|
      if @fund_history.save
        format.html { redirect_to @fund_history, notice: 'Fund history was successfully created.' }
        format.json { render :show, status: :created, location: @fund_history }
      else
        format.html { render :new }
        format.json { render json: @fund_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_histories/1
  # PATCH/PUT /fund_histories/1.json
  def update
    respond_to do |format|
      if @fund_history.update(fund_history_params)
        format.html { redirect_to @fund_history, notice: 'Fund history was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_history }
      else
        format.html { render :edit }
        format.json { render json: @fund_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_histories/1
  # DELETE /fund_histories/1.json
  def destroy
    @fund_history.destroy
    respond_to do |format|
      format.html { redirect_to fund_histories_url, notice: 'Fund history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_history
      @fund_history = FundHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_history_params
      params.require(:fund_history).permit(:date, :nav)
    end
end
