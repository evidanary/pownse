class Commitment < ActiveRecord::Base
  attr_accessible :name, :recurring, :checkin_date, :wager
  has_many :checkins, dependent: :destroy
  validates :user_id, presence: true
  validates :name, presence: true, length: {maximum: 140}
  validates :recurring, :inclusion => {:in => [true, false]}
  validates :wager, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0}
  belongs_to :commitment
  default_scope order: 'commitments.created_at DESC'
end