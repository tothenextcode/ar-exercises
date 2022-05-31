class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {:only_integer => true, :greater_than_or_equal_to => 0}
  validate :store_must_carry_at_least_women_or_men_apparel

  def store_must_carry_at_least_women_or_men_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add :base, "Mens and womens apparel cannot both be empty at the same time"
    end
  end
end