class User < ApplicationRecord
    has_many :riders
    has_many :restaurants, through: :riders
end
