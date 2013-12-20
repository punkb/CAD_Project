class AddCollegecityToSpecialization < ActiveRecord::Migration
  def change
    add_column :specializations, :city, :string
  end
end
