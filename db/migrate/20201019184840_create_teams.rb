class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :primary_contact, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
