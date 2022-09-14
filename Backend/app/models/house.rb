class House < ActiveRecord::Base
    has_many :portfolios
    has_many :owners, through: :portfolio
end