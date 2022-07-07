class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :Name
      t.string :Amount
      t.references :category_id, null: false
      t.references :user_id, null: false
      t.timestamps
    end

    add_foreign_key :payments, :users, column: :user_id
    add_foreign_key :payments, :categories, column: :category_id
    end
  end
end
