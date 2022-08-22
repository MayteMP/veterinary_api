class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthday
      t.string :genre
      t.string :specie
      t.string :color
      t.string :brees
      t.string :microchip_number
      t.text :particular_sings

      t.timestamps
    end
  end
end
