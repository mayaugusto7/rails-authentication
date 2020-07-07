class PerfilUsuario < ApplicationRecord
  belongs_to :perfil
  belongs_to :user
end
