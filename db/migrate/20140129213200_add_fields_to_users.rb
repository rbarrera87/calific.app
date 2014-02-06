class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido_paterno, :string
    add_column :users, :apellido_materno, :string
    add_column :users, :fotografia_url, :string
    add_column :users, :numero_control, :integer
    add_column :users, :contrasena, :string
    add_column :users, :fecha_nacimiento, :date
    add_column :users, :estado_civil, :string
    add_column :users, :sexo, :string
    add_column :users, :cp, :string
    add_column :users, :curp, :string
    add_column :users, :nss, :string
    add_column :users, :telefono, :integer
    add_column :users, :celular, :integer
    add_column :users, :correo_electronico, :string
    add_column :users, :calle, :string
    add_column :users, :numero_exterior, :string
    add_column :users, :numero_inteior, :string
    add_column :users, :numero_departamento, :string
    add_column :users, :referencias, :string
    add_column :users, :comentarios, :text
    add_column :users, :poblacion, :string
    add_column :users, :estado, :string
    add_column :users, :situacion, :text
  end
end
