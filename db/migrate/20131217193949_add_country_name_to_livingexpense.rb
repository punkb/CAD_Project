class AddCountryNameToLivingexpense < ActiveRecord::Migration
  def change
    add_column :livingexpenses, :Country_name, :string
  end
end
