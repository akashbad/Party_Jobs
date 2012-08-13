class CreatePartyJobs < ActiveRecord::Migration
  def change
    create_table :party_jobs do |t|
      t.string :name
      t.integer :capacity
      t.integer :time
      t.integer :party_type_id

      t.timestamps
    end
  end
end
