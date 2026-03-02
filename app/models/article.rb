class Article < ApplicationRecord
    validates :title, length: { minimum: 5 }
    has_many :comments, dependent: :destroy
end
    