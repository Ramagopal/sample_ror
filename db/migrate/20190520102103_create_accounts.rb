class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :acc_id
      t.belongs_to :user_id, foreign_key: true

      t.timestamps
    end
  end
end
