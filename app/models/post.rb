class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length:{minimum: 250}
    validates :summary, length:{maximum: 250}
    validates :category, inclusion:{in: ["Fiction", "Non-Fiction"]}
    validate :title_is_not


    def title_is_not
        if title == "True Facts"
            errors.add(:title, "Only clickbaits allowed")
        end
    end
end
