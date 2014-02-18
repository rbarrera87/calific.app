class AddCarreraIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :carrera_id, :integer
  end
end
