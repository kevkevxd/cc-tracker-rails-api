class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.integer :user_id
      t.string :name
      t.integer :annual_fee
      t.string :approval_date
      t.integer :bonus_amount
      t.integer :bonus_spend
      t.string :bonus_month_period
      t.integer :percentage_earn
      t.string :earn_description
      t.integer :category
      t.string :bank_name
      t.boolean :insurance
      t.boolean :price_protection
      t.boolean :return_protection
      t.boolean :extended_warranty
      t.boolean :travel_credit
      t.boolean :global_entry
      t.boolean :lounge_access
      t.text :notes

      t.timestamps
    end
  end
end
