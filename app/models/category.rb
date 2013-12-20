class Category < ActiveRecord::Base
  attr_accessible :category_name
  has_many :specializations
  has_many :jobs
  belongs_to :countries
end
