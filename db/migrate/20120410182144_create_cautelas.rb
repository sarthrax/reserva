class CreateCautelas < ActiveRecord::Migration
  def change
    create_table :cautelas do |t|
      t.datetime :data_inicio
      t.datetime :data_termino
      t.references :policial
      t.references :item
      t.text :observacao

      t.timestamps
    end
    add_index :cautelas, :policial_id
    add_index :cautelas, :item_id
  end
end
