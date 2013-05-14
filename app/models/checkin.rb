class Checkin < ActiveRecord::Base
  attr_accessible :status, :commitment_id
  validates :commitment_id, presence: true
  validates :status, presence: true
  belongs_to :commitment
end
