class Comment < ApplicationRecord
	has_one_attached :image
	validates :random_url, {presence: true, uniqueness: true}
end
