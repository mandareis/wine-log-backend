class CreateLoves < ActiveRecord::Migration[6.0]
  def change
    create_table :loves do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
    add_index :loves, [:user_id, :wine_id], unique: true
  end
end
