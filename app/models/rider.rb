class Rider < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :delivery_fee, numericality: { in: 850..1200}
end
