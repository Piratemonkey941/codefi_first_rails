class Article < ApplicationRecord
    validates :title, :description, presence: true
    validates :title, length: {minimum: 5, maximum: 50}

    belongs_to :user
end


# Article.new