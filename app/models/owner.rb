class Owner < ApplicationRecord
	validates :pass, {presence: true} #passが存在するかどうか
end
