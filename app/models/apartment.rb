class Apartment < ApplicationRecord
    has_many :leases
    has_many :tenants, through: :leases
    validates :number, numericality: { greater_than: 0 }
end
