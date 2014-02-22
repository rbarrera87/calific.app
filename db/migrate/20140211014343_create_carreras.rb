class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :nombre_id

      t.timestamps
    end
   
  end
end
