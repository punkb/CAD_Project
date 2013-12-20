class CreateLivingexpenses < ActiveRecord::Migration
  def change
    create_table :livingexpenses do |t|
      t.string :City
      t.string :Country_name
      t.integer :FoodCost
      t.integer :AccomodationCost
      t.integer :TransportationCost
      t.string :UserID

      t.timestamps
    end
  end
end
