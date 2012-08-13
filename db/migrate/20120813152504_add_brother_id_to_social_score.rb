class AddBrotherIdToSocialScore < ActiveRecord::Migration
  def change
  	add_column :social_scores, :brother_id, :integer
  end
end
