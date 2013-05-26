class CreateAVetAppts < ActiveRecord::Migration
  def change
    create_table :a_vet_appts do |t|
      t.string :vet_fname
      t.string :string
      t.string :vet_lname
      t.string :string
      t.string :vet_date
      t.string :string
      t.string :vet_fdate
      t.string :string
      t.string :vet_vacc
      t.string :string

      t.timestamps
    end
  end
end
