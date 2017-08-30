class Song < ApplicationRecord
  belongs_to :billboard_chart
  belongs_to :artist
end
