class Workout < ActiveRecord::Base
  validates :time, presence: true
  validates :distance, presence: true

  belongs_to :athlete
end
