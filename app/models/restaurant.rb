class Restaurant < ApplicationRecord
    has_many :foods
    has_many :riders
    has_many :users, through: :riders
end
