class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :college_name
      t.references :country
      t.string :college_location
      t.string :college_contact

      t.timestamps
    end
    add_index :colleges, :country_id
  end
end
