class Owner < ActiveRecord::Base
has_many :portfolios
has_many :houses, through: :portfolios
has_many :apartments, through: :portfolios
end