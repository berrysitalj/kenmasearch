class User < ApplicationRecord
	validates :userid, {presence: true, uniqueness: true}
end
