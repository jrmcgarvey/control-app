class Icecream < ApplicationRecord
  FLAVORS = ["vanilla","chocolate","strawberry","pistachio"]
  SIZES = ["pint","quart","gallon"]
  validates :flavor, presence: true
  validates :size, presence: true
  validates :count, presence: true
  validates :name, presence: true
  validates :count, numericality: { greater_than_or_equal_to: 1}

  def self.flavors
    two_d = []
    FLAVORS.each do |f|
      two_d << [f,f]
    end
    return two_d
  end
end
