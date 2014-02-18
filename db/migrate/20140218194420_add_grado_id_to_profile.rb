class AddGradoIdToProfile < ActiveRecord::Migration
  def change
  	add_column :profiles, :grado_id, :integer
  	add_index :profiles, :grado_id, unique: true
  	change_column_null :profiles, :grado_id, false
  end
end
