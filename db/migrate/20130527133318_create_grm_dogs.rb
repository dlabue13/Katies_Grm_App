class CreateGrmDogs < ActiveRecord::Migration
  def change
    create_table :grm_dogs do |t|
      t.string :name
      t.string :breed
      t.string :allergies
      t.string :weight

      t.timestamps
    end
  end
end
