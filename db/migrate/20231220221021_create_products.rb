class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :brand, :string
      t.column :price, :decimal
      t.column :characteristics, :jsonb
      t.column :description, :string

      t.timestamps
    end
  end
end
