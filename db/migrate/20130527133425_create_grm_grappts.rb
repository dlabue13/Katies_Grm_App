class CreateGrmGrappts < ActiveRecord::Migration
  def change
    create_table :grm_grappts do |t|
      t.string :gr_date
      t.string :gr_fdate
      t.string :gr_style

      t.timestamps
    end
  end
end
