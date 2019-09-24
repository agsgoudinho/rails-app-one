class Contact < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
  validates_uniqueness_of :name, scope: [:born_date, :user_id]
end