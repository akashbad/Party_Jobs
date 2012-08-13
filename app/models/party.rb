class Party < ActiveRecord::Base
  attr_accessible :name, :type_name
  has_many :party_assignments
end
