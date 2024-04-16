class Club < ApplicationRecord
    has_many :competitions, dependent: :destroy
end
