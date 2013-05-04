class Checkin < ActiveRecord::Base
  attr_accessible :checkin_date, :status, :user_id
  validates :commitment_id, presence: true
  validates :checkin_date, presence: true
  validates :status, presence: true
  belongs_to :commitment
end
