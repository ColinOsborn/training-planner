class AddAthletesIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :athlete, index: true, foreign_key: true
  end
end
