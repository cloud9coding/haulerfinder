class BidRequest < ActiveRecord::Base
  belongs_to :user
  has_many :horses
end
