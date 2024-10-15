class Geek < ApplicationRecord
    include ActionController::Serialization

    has_many :applies
end
