class PartyAssignment < ActiveRecord::Base
  attr_accessible :name,  :time
  belongs_to :party
  belongs_to :brother
end
