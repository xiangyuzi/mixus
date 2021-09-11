class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer    :deadline_id, null: false
      t.string     :email
      t.references :user,        null: false, foreign_key: true
      t.references :idea,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
