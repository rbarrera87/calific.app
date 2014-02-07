class RemoveFieldsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :nombre, :string
    remove_column :users, :apellido_paterno, :string
    remove_column :users, :apellido_materno, :string
    remove_column :users, :fotografia_url, :string
    remove_column :users, :numero_control, :integer
    remove_column :users, :contrasena, :string
    remove_column :users, :fecha_nacimiento, :date
    remove_column :users, :estado_civil, :string
    remove_column :users, :sexo, :string
    remove_column :users, :cp, :string
    remove_column :users, :curp, :string
    remove_column :users, :nss, :string
    remove_column :users, :telefono, :integer
    remove_column :users, :celular, :integer
    remove_column :users, :correo_electronico, :string
    remove_column :users, :calle, :string
    remove_column :users, :numero_exterior, :string
    remove_column :users, :numero_inteior, :string
    remove_column :users, :numero_departamento, :string
    remove_column :users, :referencias, :string
    remove_column :users, :comentarios, :text
    remove_column :users, :poblacion, :string
    remove_column :users, :estado, :string
    remove_column :users, :situacion, :text
    	add_column :profiles, :user_id, :integer
  end

end
