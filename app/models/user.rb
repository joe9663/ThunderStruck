class User < ApplicationRecord
  has_many :gameboards

  has_secure_password

  validates :name, {uniqueness: true}

end
