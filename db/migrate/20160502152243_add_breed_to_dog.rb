class AddBreedToDog < ActiveRecord::Migration
  def change
    add_reference :dogs, :breed_id, index: true, foreign_key: true
  end
end
