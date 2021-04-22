class Shop < ApplicationRecord

validates :userid, {uniqueness: true}

with_options presence: true do
  validates :userid
  validates :pass
  validates :shopname
  validates :shoptel
  validates :addres1
  validates :addres2
  validates :area
end

	def self.search(search)
      return Shop.all unless search
      Shop.where(['yomi LIKE ? or 
                   addres1 LIKE ? or 
                   addres2 LIKE ? or 
                   area2 LIKE ? or 
                   shopname LIKE ? or 
                   station LIKE ?', 
                   "%#{search}%", 
                   "%#{search}%", 
                   "%#{search}%", 
                   "%#{search}%", 
                   "%#{search}%", 
                   "%#{search}%"])
    end

end
