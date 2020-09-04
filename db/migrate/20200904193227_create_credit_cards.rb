class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.string :bank
      t.date :approval_date
      t.int :sign_up_bonus_amount
      t.string :percent_earn

      t.timestamps
    end
  end
end
