class CreateIndicativos < ActiveRecord::Migration
  def change
    create_table :indicativos do |t|
      t.string :descricao
      t.string :lote

      t.timestamps
    end
  end
end
