class CreateGrmPics < ActiveRecord::Migration
  def change
    create_table :grm_pics do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
