class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.integer :amount
      t.belongs_to :user, null: false, foreign_key: true
      t.string :wallet_number
      t.string :iban
      t.date :expiration_date
      t.string :service_name
      t.boolean :locked, default: false

      t.timestamps
    end

    add_index :wallets, :wallet_number, unique: true, name: 'index_wallets_on_wallet_number'
  end
end
