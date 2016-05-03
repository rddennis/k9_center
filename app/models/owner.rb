class Owner < ActiveRecord::Base
  has_many :dogs

  def name
    "#{first_name} #{last_name}"
  end

    validates :first_name, presence: true, length: {minimum: 2}
    validates :last_name, presence: true, length: {minimum: 2}
    validates :phone, presence: true, numericality: {only_integer: true}, uniqueness: true
    validates :emergency_name, presence: true, length: {minimum: 2}
    validates :emergency_phone, presence: true, numericality: {only_integer: true}
end
