class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :commitment_id
      t.datetime :checkin_date
      t.boolean :status

      t.timestamps
    end
  end
end
