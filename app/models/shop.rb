class Shop < ApplicationRecord
<<<<<<< HEAD

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

	def self.search(search)
=======
  validates :pass, {presence: true}

    def self.search(search)
>>>>>>> b54174fbbcd6a930f3e6250351e1fe605a15ade0
      return Shop.all unless search
      Shop.where(['addres1 LIKE ? or addres2 LIKE ? or shopname LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    end
end
