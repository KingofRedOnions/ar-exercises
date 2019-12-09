require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many:employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true,
                                             greater_than_or_equal_to: 0 }
  validate :must_carry_apparel
  
  def must_carry_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "The store must carry at least one type of apparel.")
    end
  end
end

burnaby = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

richmond = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

gastown = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

p Store.count