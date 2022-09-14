class Apartment < ActiveRecord::Base
    has_many :portfolios
    has_many :owners, through: :portfolios
end