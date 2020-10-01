class Output < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many :comments
  belongs_to_active_hash :book_genre
  belongs_to_active_hash :post_type
  has_one_attached :image
  
 
  # validates :book_name, :post_text, presence: true

  # validates :book_name_id, :post_type_id, nemericality: { other_than: 1}
end
