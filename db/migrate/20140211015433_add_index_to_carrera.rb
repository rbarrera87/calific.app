class AddIndexToCarrera < ActiveRecord::Migration
  def change
  	 add_index :carreras, :nombre_id, unique: true
  end
end
