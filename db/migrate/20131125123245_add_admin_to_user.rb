class AddAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :Boolean, :default => false 

  end
end
