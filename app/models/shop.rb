class Shop < ApplicationRecord


	with_options presence: true do
		validates :userid
		validates :pass
		validates :shopname
		validates :area
	end

	with_options uniqueness: true do
		validates :userid
		validates :shopname
	end

	

  validates :pass, {presence: true}

    def self.search(search)

      return Shop.all unless search
      Shop.where(['addres1 LIKE ? or addres2 LIKE ? or shopname LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    end
end
