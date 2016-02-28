class CreateBidRequests < ActiveRecord::Migration
  def change
    create_table :bid_requests do |t|
      t.references :user, index: true
      t.string :pick_up_street
      t.string :pick_up_city_state
      t.string :pick_up_zip
      t.string :drop_off_street
      t.string :drop_off_city_state
      t.string :drop_off_zip
      t.date :pick_up_date
      t.time :pick_up_time
      t.date :drop_off_date
      t.time :drop_off_time

      t.timestamps
    end
  end
end
