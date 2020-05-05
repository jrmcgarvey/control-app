class Icecream < ApplicationRecord
  FLAVORS = ["vanilla","chocolate","strawberry","pistachio"]
  SIZES = ["pint","quart","gallon"]

  def self.flavors
    two_d = []
    FLAVORS.each do |f|
      two_d << [f,f]
    end
    return two_d
  end
end
