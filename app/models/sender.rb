class Sender < ApplicationRecord

	with_options presence: true do
		validates :shopname
		validates :tel4
		validates :area
		validates :addres
		validates :charge
		validates :chargemail
	end
end
