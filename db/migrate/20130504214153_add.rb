class Add < ActiveRecord::Migration
  def change
    add_column :commitments, :checkin_date, :datetime
  end
end
