class PartyJob < ActiveRecord::Base
  attr_accessible :capacity, :name, :time
  belongs_to :party_type
  has_many :party_prefs
end
