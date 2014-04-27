# == Schema Information
#
# Table name: cookbooks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Cookbook < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  belongs_to :user
end
