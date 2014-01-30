class CreateNombres < ActiveRecord::Migration
  def change
    create_table :nombres do |t|

      t.timestamps
    end
  end
end
