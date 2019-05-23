class CreateAccountHistory2s < ActiveRecord::Migration[5.2]
  def change
    create_table :account_history2s do |t|
      t.string :history
      t.belongs_to :acc_id, foreign_key: true

      t.timestamps
    end
  end
end
