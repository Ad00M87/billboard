class Song < ApplicationRecord
  belongs_to :billboard_chart, optional: true
  belongs_to :artist
end
