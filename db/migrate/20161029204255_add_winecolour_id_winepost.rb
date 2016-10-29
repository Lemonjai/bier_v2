class AddWinecolourIdWinepost < ActiveRecord::Migration[5.0]
  def change
    add_column :wineposts, :winecolour_id, :integer
  end
end
