class AddImagePathAgeAndLocationToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :image_path, :string
    add_column :athletes, :age, :integer
    add_column :athletes, :location, :string
    
  end
end
