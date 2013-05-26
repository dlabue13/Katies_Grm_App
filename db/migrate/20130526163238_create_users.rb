class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :string
      t.string :l_name
      t.string :string
      t.string :cust_address
      t.string :string
      t.string :cust_city
      t.string :string
      t.string :cust_state
      t.string :string
      t.string :cust_zip
      t.string :integer
      t.string :cust_phone
      t.string :integer

      t.timestamps
    end
  end
end
