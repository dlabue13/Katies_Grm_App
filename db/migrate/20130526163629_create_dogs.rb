class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :string
      t.string :dog_breed
      t.string :string
      t.string :dog_allergies
      t.string :string
      t.string :dog_weight
      t.string :int

      t.timestamps
    end
  end
end
