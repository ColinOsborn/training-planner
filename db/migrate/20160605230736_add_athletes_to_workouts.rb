class AddAthletesToWorkouts < ActiveRecord::Migration
  def change
    add_reference :workouts, :athlete, index: true, foreign_key: true
  end
end
