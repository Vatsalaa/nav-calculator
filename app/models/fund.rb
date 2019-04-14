class Fund < ApplicationRecord
  def self.get_all_funds
    Fund.pluck(:name,:code)
  end
end
