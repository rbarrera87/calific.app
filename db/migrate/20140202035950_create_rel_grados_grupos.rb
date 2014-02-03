class CreateRelGradosGrupos < ActiveRecord::Migration
  def change
    create_table :rel_grados_grupos do |t|
      t.integer :grado_id
      t.integer :grupo_id

      t.timestamps
    end
  end
end
