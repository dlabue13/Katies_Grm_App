class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :style_fname
      t.string :string
      t.string :stylst_lname
      t.string :string
      t.string :style_specialty
      t.string :string

      t.timestamps
    end
  end
end
