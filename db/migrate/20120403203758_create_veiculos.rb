class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :modelo
      t.string :cor
      t.references :policial

      t.timestamps
    end
    add_index :veiculos, :policial_id
  end
end
