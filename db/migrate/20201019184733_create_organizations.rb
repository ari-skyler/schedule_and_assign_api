class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :primary_contact, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
