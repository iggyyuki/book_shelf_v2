class Book < ActiveRecord::Base
    validates :name, presence: true ,length: { maximum:20 }
    validates :price, presence: true
end
