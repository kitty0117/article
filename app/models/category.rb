class Category < ApplicationRecord
    has_many :article
    validates :title, presence: true
    validates :wrapup, presence: true
end
