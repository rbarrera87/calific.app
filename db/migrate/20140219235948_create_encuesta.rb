class CreateEncuesta < ActiveRecord::Migration
  def change
    create_table :encuestas do |t|
      t.string :pregunta
      t.string :respuesta

      t.timestamps
    end
  end
end
