class User < ApplicationRecord
    has_many :riders
    has_many :restaurants, through: :riders

    validates :password, length: { in: 7..20 }
    validates :phone_number, length: { in: 11..13 }
    validates :email_address, uniqueness: true
end
