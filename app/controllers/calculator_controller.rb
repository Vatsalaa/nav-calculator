class CalculatorController < ApplicationController
  def index
  end

  def submit
    @amount = params[:user][:amount].to_f
    @date = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i)
    @fund = Fund.find_by_code(params[:fund_code])
    if @fund
      @nav_data = FundHistory.where("fund_id = '#{@fund.id}' and date <= '#{@date.to_s}'").order("date desc").first
    end
    if @fund.blank?
      @error = "No fund / fund data found"
      render :index
    elsif @nav_data.blank?
      @error = "NAV Data not available"
      render :index
    else
      @result = Calculator.new(@fund, @nav_data, @amount).calculate
      render :index
    end
  end
end
