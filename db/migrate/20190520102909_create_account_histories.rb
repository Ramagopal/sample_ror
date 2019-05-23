class CreateAccountHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :account_histories do |t|
      t.integer :history_id
      t.belongs_to :acc_id, foreign_key: true

      t.timestamps
    end
  end
end
