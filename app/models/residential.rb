class Residential < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_one :proponent
  has_many :items
  acts_as_votable 
end
