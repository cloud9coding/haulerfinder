class BidRequest < ActiveRecord::Base
  belongs_to :user
  has_many :horses
  validates_formatting_of :pick_up_zip, using: :us_zip
end
