class SocialScore < ActiveRecord::Base
  attr_accessible :value
  belongs_to :brother
end
