class AddPersonIdToThings < ActiveRecord::Migration
  def change
    add_column :things, :person_id, :integer
  end
end
