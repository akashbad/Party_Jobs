class AddAbsentToSocialScore < ActiveRecord::Migration
  def change
  	add_column :social_scores, :absent, :boolean
  end
end
