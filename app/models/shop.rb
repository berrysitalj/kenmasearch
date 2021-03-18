class Shop < ApplicationRecord

	validates :pass, {presence: true}

	def self.search(search)
      return Shop.all unless search
      Shop.where(['yomi LIKE ? or addres1 LIKE ? or addres2 LIKE ? or shopname LIKE ? or station LIKE ? ', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    end

end
