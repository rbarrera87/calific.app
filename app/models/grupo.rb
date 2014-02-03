class Grupo < ActiveRecord::Base
  has_many :rel_grados_grupos
  has_many :grados, through: :rel_grados_grupos
end
