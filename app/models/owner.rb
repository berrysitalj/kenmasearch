class Owner < ApplicationRecord
	validates :pass, {presence: true}
end
