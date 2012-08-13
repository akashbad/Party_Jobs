class Brother < ActiveRecord::Base
  attr_accessible :name
  has_one :social_score
  has_many :party_assignments
  has_many :party_prefs
end
