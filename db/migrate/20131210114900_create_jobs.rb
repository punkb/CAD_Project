class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :country
      t.references :category
      t.integer :number_of_job
      t.date :date

      t.timestamps
    end
    add_index :jobs, :country_id
    add_index :jobs, :category_id
  end
end
