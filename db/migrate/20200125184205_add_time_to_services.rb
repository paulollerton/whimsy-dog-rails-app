class AddTimeToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :time, :integer
  end
end
