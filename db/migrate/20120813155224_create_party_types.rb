class CreatePartyTypes < ActiveRecord::Migration
  def change
    create_table :party_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
