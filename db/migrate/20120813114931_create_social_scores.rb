class CreateSocialScores < ActiveRecord::Migration
  def change
    create_table :social_scores do |t|
      t.integer :value

      t.timestamps
    end
  end
end
