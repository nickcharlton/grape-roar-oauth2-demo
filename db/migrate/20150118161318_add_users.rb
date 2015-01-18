class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :organisation

      t.timestamps null: false
    end
  end
end
