class RemoveNumerointeriorFromProfiles < ActiveRecord::Migration
  def change
    rename_column :profiles, :numero_inteior, :numero_interior 
  end
end
