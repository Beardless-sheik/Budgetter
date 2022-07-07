class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :Name
      t.string :Icon
      t.bigint :user_id, null: false

      t.timestamps
    end

    add_foreign_key :categories, :users, column: :user_id
  end
end
