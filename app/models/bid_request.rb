class BidRequest < ActiveRecord::Base
  belongs_to :user
  has_many :horses
  validates_formatting_of :pick_up_zip, using: :us_zip
  validates_formatting_of :drop_off_zip, using: :us_zip
end
