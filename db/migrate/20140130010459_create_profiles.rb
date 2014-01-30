class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :fotografia_url
      t.integer :numero_control
      t.string :contrasena
      t.date :fecha_nacimiento
      t.string :estado_civil
      t.string :sexo
      t.string :cp
      t.string :curp
      t.string :nss
      t.integer :telefono
      t.integer :celular
      t.string :correo_electronico
      t.string :calle
      t.string :numero_exterior
      t.string :numero_inteior
      t.string :numero_departamento
      t.string :referencias
      t.text :comentarios
      t.string :poblacion
      t.string :estado
      t.text :situacion

      t.timestamps
    end
  end
end
