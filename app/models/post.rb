class Post < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, length: { minimum: 10 }
    validates :title, uniqueness: true
end
