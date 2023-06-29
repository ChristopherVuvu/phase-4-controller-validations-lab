class Author < ApplicationRecord
    validates :name, presence: true
    validates :emails, uniqueness: true
end

class Post < ApplicationRecord
    validates :title, presence: true
    validates :category {in:["Fiction", "Non-Fiction"]}
    validates :content, lengtg:{minimum: 100}
end
