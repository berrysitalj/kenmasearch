class Shop < ApplicationRecord
	validates :userid, {presence: true, uniqueness: true}

end
