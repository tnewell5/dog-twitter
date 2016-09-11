class Dog < ApplicationRecord
  has_many :barks

  def number_of_barks
    self.barks.count
  end
end
