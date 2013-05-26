class CreateGrooms < ActiveRecord::Migration
  def change
    create_table :grooms do |t|
      t.string :grappt_date
      t.string :string
      t.string :grappt_futappdate
      t.string :string
      t.string :grappt_style
      t.string :string

      t.timestamps
    end
  end
end
