class CreateGrmVetappts < ActiveRecord::Migration
  def change
    create_table :grm_vetappts do |t|
      t.string :vet_fname
      t.string :vet_lname
      t.string :vet_date
      t.string :vet_fdate
      t.string :vet_vacc

      t.timestamps
    end
  end
end
