class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :username
      t.integer :user_id
      t.integer :stars
      t.text :content
      t.integer :caregiver_id
      t.string :caregiver_username

      t.timestamps
    end
  end
end
