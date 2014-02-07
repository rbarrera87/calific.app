class AddNotNullFkToProfiles < ActiveRecord::Migration
  def change
  	change_column_null :profiles, :user_id, false
  end
end
