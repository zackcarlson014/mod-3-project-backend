class User < ApplicationRecord
    has_many :favorites
    has_many :appetizers, through: :favorites
end
