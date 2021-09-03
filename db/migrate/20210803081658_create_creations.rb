class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations do |t|
      t.text       :comment, null: false
      t.string     :day,     null: false
      t.references :user,    null: false, foreign_key: true
      t.references :idea,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
