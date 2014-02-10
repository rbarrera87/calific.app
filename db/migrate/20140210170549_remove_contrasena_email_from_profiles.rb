class RemoveContrasenaEmailFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :contrasena, :string
    remove_column :profiles, :correo_electronico, :string
  end
end
