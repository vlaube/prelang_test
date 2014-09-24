class Proponent < ActiveRecord::Base
  belongs_to :residential
  validates_formatting_of :email, using: :email
end
