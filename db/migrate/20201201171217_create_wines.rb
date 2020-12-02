class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.string :kind
      t.string :cost
      t.string :region

      t.timestamps
    end
  end
end
