class RegisteredItem < ApplicationRecord
	with_options uniqueness: true do
		validates :userid
		validates :shopname
	end

	with_options presence: true do
		validates :userid
		validates :pass
		validates :shopname
		validates :area
	end

	VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
	validates :pass, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英数を両方含む必要があります'}
	validates :pass, {length: { in: 8..35 }}

	has_one_attached :image

end
