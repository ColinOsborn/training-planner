class AddReferenceToAthlete < ActiveRecord::Migration
  def change
    add_reference :coaches, :athlete, index: true, foreign_key: true
  end
end
