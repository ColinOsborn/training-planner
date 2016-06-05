class AddHeightWeightToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :height, :string
    add_column :athletes, :weight, :integer
  end
end
