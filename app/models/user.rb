class User < ApplicationRecord
  def change
    create_tables :users do |t|
      t.string :email, null: false, limit: 191
      t.string :name, null: false
      t.bigint :storage_quota, default: 5_368_709_120
      t.bigint :storage_used, default: 0

      t.timestamps
      t.index :email, unique: true
    end
  end
end
