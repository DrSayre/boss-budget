class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.integer :balance_cents
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
