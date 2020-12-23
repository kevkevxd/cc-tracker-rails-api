class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.boolean :is_bookedmarked, default: false, null: false
      t.integer :annual_fee
      t.string :approval_date, default: 0
      t.integer :bonus_amount, default: 0
      t.string :reward_name
      t.integer :bonus_spend
      t.string :bonus_month_period
      t.integer :percentage_earn
      t.text :earn_description, array: true, default: []
      t.integer :category
      t.string :bank_name
      t.boolean :insurance, default: false, null: false
      t.boolean :price_protection, default: false, null: false
      t.boolean :return_protection, default: false, null: false
      t.boolean :extended_warranty, default: false, null: false
      t.boolean :travel_credit, default: false, null: false
      t.boolean :global_entry, default: false, null: false
      t.boolean :lounge_access, default: false, null: false
      t.text :notes

      t.timestamps
    end
  end
end
