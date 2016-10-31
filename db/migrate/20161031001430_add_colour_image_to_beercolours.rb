class AddColourImageToBeercolours < ActiveRecord::Migration[5.0]
  def change
    add_column :beercolours, :colour_image, :string
  end
end
