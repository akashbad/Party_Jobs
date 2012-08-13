class SocialScore < ActiveRecord::Base
  attr_accessible :value, :absent
  belongs_to :brother
end
