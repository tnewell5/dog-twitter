class RemoveNumberOfBarksFromDog < ActiveRecord::Migration[5.0]
  def change
    remove_column :dogs, :number_of_barks, :string
  end
end
