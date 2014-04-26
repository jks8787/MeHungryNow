# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  imageurl       :text
#  ingredientlist :text
#  yummlyid       :string(255)
#

class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :cookbooks
  validates :yummlyid, uniqueness: true
end
