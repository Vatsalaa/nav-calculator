class CreateFundHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :fund_histories do |t|
      t.references :fund
      t.date :date
      t.float :nav
    end
  end
end
