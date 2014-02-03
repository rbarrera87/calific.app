class Grado < ActiveRecord::Base
  has_many :rel_grados_grupos
  has_many :grupos, through: :rel_grados_grupos
end
