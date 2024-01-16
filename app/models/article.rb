class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
    validates :user_id, presence: true
end
