class CreatePartyAssignments < ActiveRecord::Migration
  def change
    create_table :party_assignments do |t|
      t.string :name
      t.integer :time
      t.integer :brother_id
      t.integer :party_id

      t.timestamps
    end
  end
end
