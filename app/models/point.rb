class Point < ApplicationRecord
  validates :x, :y, presence: true
end
