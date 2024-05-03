class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :hourly_rate, numericality: { only_integer: true }

  before_save :add_password

  private

  def rand_string(n)
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(n) { charset.sample }.join
  end

  def add_password
    self.password = rand_string(8)
    # self.update(password: self.password)
  end


end
