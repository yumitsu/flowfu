class Role < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.get name
    find_by_name name
  end
end

# == Schema Information
#
# Table name: roles
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
