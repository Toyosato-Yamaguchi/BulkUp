class Recipe < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :recipe_name
    validates :ingredients
    validates :food_weight
    validates :cooking_method
  end

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cooking_time

  with_options numericality: {other_than: 1 } do
    validates :cooking_time_id
  end
end
