class CreateGrmUsers < ActiveRecord::Migration
  def change
    create_table :grm_users do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
