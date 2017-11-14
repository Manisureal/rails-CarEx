class AddColumnsToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :make, :string
    add_column :cars, :model, :string
    add_column :cars, :seats, :integer
    add_column :cars, :engine_size, :integer
    add_column :cars, :transmission, :string
    add_column :cars, :color, :string
    add_column :cars, :reg_year, :integer
    add_column :cars, :fuel_type, :string
    add_column :cars, :interior, :string
    add_column :cars, :description, :string
    add_column :cars, :price, :integer
  end
end
