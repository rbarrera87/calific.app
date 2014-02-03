class RelGradosGrupo < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :grado
end
