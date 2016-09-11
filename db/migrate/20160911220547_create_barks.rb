class CreateBarks < ActiveRecord::Migration[5.0]
  def change
    create_table :barks do |t|
      t.string :bark
      t.integer :dog_id

      t.timestamps
    end
  end
end
