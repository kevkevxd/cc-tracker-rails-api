class CreateUserCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :user_credit_cards do |t|
      t.integer :user_id
      t.integer :credit_card_id

      t.timestamps
    end
  end
end
