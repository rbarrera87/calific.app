class AddNotNullFk < ActiveRecord::Migration
  def change
 change_column_null :rel_grados_grupos, :grado_id, false
 	change_column_null :rel_grados_grupos, :grupo_id, false
  		change_column_null :user_subjects, :user_id, false
  			change_column_null :user_subjects, :subject_id, false




  end

end
