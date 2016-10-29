class AddColourIdToBeerpost < ActiveRecord::Migration[5.0]
  def change
    add_column :beerposts, :colour_id, :integer
  end
end
