class CreatePartyPrefs < ActiveRecord::Migration
  def change
    create_table :party_prefs do |t|
      t.integer :brother_id
      t.integer :party_job_id
      t.integer :rank

      t.timestamps
    end
  end
end
