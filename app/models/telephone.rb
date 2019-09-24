class Telephone < ApplicationRecord
  belongs_to :contact
  validates_presence_of :number, :isDefault
end
