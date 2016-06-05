class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :time
      t.integer :distance

      t.timestamps null: false
    end
  end
end
