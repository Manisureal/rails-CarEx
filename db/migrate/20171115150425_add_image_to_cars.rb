class AddImageToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :image_url, :string
  end
end
