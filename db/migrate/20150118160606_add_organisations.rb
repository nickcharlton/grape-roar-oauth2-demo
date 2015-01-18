class AddOrganisations < ActiveRecord::Migration
  def change
    create_table :organisation do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
