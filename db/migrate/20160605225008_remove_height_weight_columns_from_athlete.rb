class RemoveHeightWeightColumnsFromAthlete < ActiveRecord::Migration
  def change
    remove_column(:athletes, :height, :float, :null)
    remove_column(:athletes, :weight, :float, :null)
  end
end
