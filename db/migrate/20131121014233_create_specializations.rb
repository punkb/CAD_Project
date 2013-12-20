class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.references :category
      t.references :college
      t.string :specialization_name
      t.string :award_type
      t.string :duration
      t.string :mode_of_delivery
      t.string :fees
      t.text :description

      t.timestamps
    end
    add_index :specializations, :category_id
    add_index :specializations, :college_id
  end
end
