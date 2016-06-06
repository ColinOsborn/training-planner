class Athlete < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :height, presence: true
  validates :weight, presence: true

  # before_action :require_login

  has_many :workouts
  has_many :coaches
end
