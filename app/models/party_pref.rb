class PartyPref < ActiveRecord::Base
  attr_accessible :rank
  belongs_to :brother
  belongs_to :party_job
end
