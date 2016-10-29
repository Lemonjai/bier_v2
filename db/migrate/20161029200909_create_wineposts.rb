class CreateWineposts < ActiveRecord::Migration[5.0]
  def change
    create_table :wineposts do |t|
      t.string :name

      t.timestamps
    end
  end
end
