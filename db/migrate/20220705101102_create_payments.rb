# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :Name
      t.decimal :Amount
      t.bigint :category_id, null: false
      t.bigint :user_id, null: false
      t.timestamps
    end

    add_foreign_key :payments, :users, column: :user_id
    add_foreign_key :payments, :categories, column: :category_id
  end
end
