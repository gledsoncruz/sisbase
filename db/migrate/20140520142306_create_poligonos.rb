class CreatePoligonos < ActiveRecord::Migration
  def change
    create_table :poligonos do |t|
      t.string :descricao, limit: 80, null: false
      t.text :obs
      t.polygon :the_geom, :geographic => true, :srid => 4326

      t.timestamps
    end
  end
end
