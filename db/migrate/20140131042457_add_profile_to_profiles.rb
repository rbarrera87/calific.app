class AddProfileToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :rfc, :string
  end
end
