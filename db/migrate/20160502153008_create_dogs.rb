class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :dob
      t.boolean :checked_in
      t.references :breed, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true
      t.references :vet, index: true, foreign_key: true
      t.text :info

      t.timestamps null: false
    end
  end
end
