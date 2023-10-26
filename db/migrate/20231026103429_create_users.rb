class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :name, null: false
      t.string :surname, null: false
      t.string :password, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :avatar
      t.date :date_of_birth, null: false

      t.timestamps
    end
    add_index :users, %i[username email], unique: true, name: 'index_users_on_username_and_email'
  end
end
