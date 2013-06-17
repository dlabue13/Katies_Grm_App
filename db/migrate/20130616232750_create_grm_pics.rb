class CreateGrmPics < ActiveRecord::Migration
  def change
    create_table :grm_pics do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
