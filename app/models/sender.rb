class Sender < ApplicationRecord
  with_options presence: true do
  validates :shopname
  validates :yomi
  validates :area
  validates :addres
  validates :charge
  validates :tel4
  validates :tel5
  validates :tel6
  validates :chargemail
end

  with_options length: {maximum: 4} do
  validates :tel1
  validates :tel2
  validates :tel3
  validates :tel4
  validates :tel5
  validates :tel6
end
  
  with_options length: {maximum: 20} do
  validates :shopname
  validates :yomi
  validates :charge
end

  with_options length: {maximum: 200} do
  validates :chargemail
  validates :question
end

  with_options length: {maximum: 60} do
  validates :chargemail
  validates :addres
end

end
