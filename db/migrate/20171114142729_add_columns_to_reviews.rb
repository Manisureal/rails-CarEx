class AddColumnsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :content, :text
    add_column :reviews, :rating, :integer
  end
end
