class Athlete < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :height, presence: true
  validates :weight, presence: true

  has_many :workouts
end
