class Store < ActiveRecord::Base
  before_destroy :check
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens_apparel


  def must_carry_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "cannot be false if womens apparel is false")
      errors.add(:womens_apparel, "cannot be false if mens apparel is false")
    end
  end

  def check
    if self.employees.count > 1
      throw :abort
    end
  end
end
