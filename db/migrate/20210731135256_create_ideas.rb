class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.string     :catchphrase, null: false
      t.text       :detail,      null: false
      t.integer    :category_id, null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
