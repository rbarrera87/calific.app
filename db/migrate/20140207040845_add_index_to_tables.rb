class AddIndexToTables < ActiveRecord::Migration
  def change
  
  	add_index :profiles, :user_id, unique: true
      add_index :rel_grados_grupos, [:grado_id, :grupo_id], unique: true

  end
end