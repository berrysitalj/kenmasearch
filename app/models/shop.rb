class Shop < ApplicationRecord
	validates :pass, {presence: true}

	def self.search(search)
      return Shop.all unless search
      Shop.where(['addres1 LIKE ? or addres2 LIKE ? or shopname LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    end
end
