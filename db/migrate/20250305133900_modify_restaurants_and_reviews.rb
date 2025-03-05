class ModifyRestaurantsAndReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :rating, :integer

    remove_column :reviews, :rating, :integer
  end
end
