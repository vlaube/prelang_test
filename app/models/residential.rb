class Residential < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_one :proponent
end
