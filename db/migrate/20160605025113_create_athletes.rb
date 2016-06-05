class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name
      t.float :height
      t.float :weight

      t.timestamps null: false
    end
  end
end
