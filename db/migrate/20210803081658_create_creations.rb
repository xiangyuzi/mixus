class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations do |t|
      t.text       :comment,     null: false
      t.integer    :deadline_id, null: false
      t.references :order,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
