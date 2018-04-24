class Category < ApplicationRecord
  has_many :articles, through: :jonctions
end
