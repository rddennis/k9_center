class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :dob
      t.boolean :checked_in
      t.references :owner_id, index: true, foreign_key: true
      t.references :vet_id, index: true, foreign_key: true
      t.text :info

      t.timestamps null: false
    end
  end
end
