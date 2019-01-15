class Duck < ApplicationRecord

  belongs_to :student
  validates :name, presence: true
  validates :description, presence: true


  # def self.search(search)
  #   if search
  #     Duck.where('name LIKE ?', "%#{search}%")
  #   else
  #     self.all
  #   end
  # end

end
