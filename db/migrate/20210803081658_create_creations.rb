class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations do |t|
      t.text :comment, null: false
      t.timestamps
    end
  end
end
