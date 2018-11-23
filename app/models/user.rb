class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relacionamento da tabela usuario
  # um usuario pode ter varios favoritos
  has_many :favorites
  # um usuario tem varios ouvidos recentemente
  has_many :recently_heards
end
