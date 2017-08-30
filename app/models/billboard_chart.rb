class BillboardChart < ApplicationRecord
  validates_presence_of :name
  has_many :songs
end
