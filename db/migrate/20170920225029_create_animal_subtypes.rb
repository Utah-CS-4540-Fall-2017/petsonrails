class CreateAnimalSubtypes < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_subtypes do |t|
      t.string :name
      t.integer :animal_type_id

      t.timestamps
    end
  end
end
