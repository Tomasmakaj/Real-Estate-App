class Portfolio < ActiveRecord::Base
    belongs_to :owner
    has_many :houses
    has_many :apartments
end