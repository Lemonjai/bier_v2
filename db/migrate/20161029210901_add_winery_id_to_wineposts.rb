class AddWineryIdToWineposts < ActiveRecord::Migration[5.0]
  def change
    add_column :wineposts, :winery_id, :integer
  end
end
