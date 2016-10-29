class CreateBeercolours < ActiveRecord::Migration[5.0]
  def change
    create_table :beercolours do |t|
      t.string :name
      t.string :hexcode

      t.timestamps
    end
  end
end
