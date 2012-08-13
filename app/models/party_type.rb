class PartyType < ActiveRecord::Base
  attr_accessible :name
  has_many :party_jobs
end
