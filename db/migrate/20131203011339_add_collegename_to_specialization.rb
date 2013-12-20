class AddCollegenameToSpecialization < ActiveRecord::Migration
  def change
    add_column :specializations, :college_name, :string
  end
end
