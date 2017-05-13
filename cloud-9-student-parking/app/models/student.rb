class Student < ActiveRecord::Base
  has_many :parking_tickets
  
  validates :name, :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  
  validate :state_must_match_zip
  
  def state_must_match_zip
  end
end
