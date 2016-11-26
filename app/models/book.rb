class Book < ActiveRecord::Base
    has_many :reviews
    validates :name, presence: true ,length: { maximum:20 }
    validates :price, presence: true
end
