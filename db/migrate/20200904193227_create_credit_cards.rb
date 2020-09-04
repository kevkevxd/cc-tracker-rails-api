class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :card_name
      t.integer :annual_fee
      t.date :approval_date
      t.integer :bonus_amount
      t.integer :bonus_spend
      t.string :bonus_month_period
      t.integer :percentage_earn
      t.string :earn_description
      t.integer :category
      t.string :bank_name
      t.integer :user_id

      t.timestamps
    end
  end
end
