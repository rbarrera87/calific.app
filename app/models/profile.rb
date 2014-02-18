class Profile < ActiveRecord::Base
  after_create :create_profile
  private
    def create_profile
      profile = user.build_profile
      profile.grupo_id = 1
      profile.save(validate: false)  
    end
  belongs_to :user
  has_one :carrera
  validates :nombre, presence: true
  validates :apellido_paterno, presence: true
  validates :apellido_materno, presence: true
  validates :fotografia_url, presence: true
  validates :numero_control, presence: true
  validates :fecha_nacimiento, presence: true
  validates :estado_civil, presence: true
  validates :sexo, presence: true
  validates :cp, numericality: true
  validates :rfc, presence: true
  validates :curp, presence: true
  validates :nss, presence: true
  # validates :correo_electronico,  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :calle, presence: true
  validates :poblacion, presence: true
  validates :estado, presence: true
  validates :situacion, presence: true	
end
