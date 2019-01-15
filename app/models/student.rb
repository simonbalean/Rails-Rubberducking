class Student < ApplicationRecord

  has_many :ducks
  validates :name, presence: true
  validates :mod, presence: true, inclusion: { in: 1..5 }

  # def self.search(search)
  #   if search
  #     Duck.where('name LIKE ?', "%#{search}%")
  #   else
  #     self.all
  #   end
  # end

end
