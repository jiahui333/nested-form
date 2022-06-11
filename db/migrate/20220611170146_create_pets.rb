class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
