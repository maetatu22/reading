class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :outputs
  has_many :comments
  belongs_to_active_hash :age
  belongs_to_active_hash :gender

  # with_options precense: true do
  #   validates :nickname
  #   validates :appeal
  #   validates :password,format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i, message: "Password Include both letters and numbers"}
  # end
end
