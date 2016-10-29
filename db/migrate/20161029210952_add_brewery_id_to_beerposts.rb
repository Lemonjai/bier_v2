class AddBreweryIdToBeerposts < ActiveRecord::Migration[5.0]
  def change
    add_column :beerposts, :brewery_id, :integer
  end
end
