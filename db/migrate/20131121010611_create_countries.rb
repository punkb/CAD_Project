class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_name
      t.text :visa_detail

      t.timestamps
    end
  end
end
