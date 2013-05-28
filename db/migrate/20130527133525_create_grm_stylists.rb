class CreateGrmStylists < ActiveRecord::Migration
  def change
    create_table :grm_stylists do |t|
      t.string :styl_fname
      t.string :styl_lname
      t.string :styl_specialty

      t.timestamps
    end
  end
end
