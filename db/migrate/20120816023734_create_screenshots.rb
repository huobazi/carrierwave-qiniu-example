class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
