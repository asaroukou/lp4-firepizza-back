class Order < ApplicationRecord
    has_many :orderline
    has_many :pizzas, through: :orderline
    accepts_nested_attributes_for :pizzas
end
