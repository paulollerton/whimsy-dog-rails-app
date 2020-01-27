class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.integer :user_id
      t.string :username
      t.string :type
      t.string :size
      t.integer :age
      t.text :about_me
      t.text :notes

      t.timestamps
    end
  end
end
