class AddChangeColumnNullToProfile < ActiveRecord::Migration
  def change
  	change_column_null :profiles, :grupo_id, false
  end
end
