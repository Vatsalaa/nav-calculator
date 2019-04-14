class Calculator

  attr_accessor :fund, :amount, :units, :nav

  def initialize(fund, nav_data, amount)
    self.fund = fund
    self.nav = nav_data.nav
    self.amount = amount
  end

  def calculate
    self.units = self.amount / self.nav
    current_nav = get_current_nav
    return self.units * current_nav
  end

  def get_current_nav
    fh = FundHistory.where("date <= '#{Date.current}' and fund_id = '#{self.fund.id}'").order("date desc").first
    if fh
      return fh.nav
    else
      return 0
    end
  end
end
