class CreateWinecolours < ActiveRecord::Migration[5.0]
  def change
    create_table :winecolours do |t|
      t.string :name
      t.string :hexcode

      t.timestamps
    end
  end
end
