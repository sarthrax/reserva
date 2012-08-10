class CreatePolicials < ActiveRecord::Migration
  def change
    create_table :policials do |t|
      t.string :cpf
      t.string :nome
      t.string :nome_guerra
      t.integer :matricula
      t.date :nascimento
      t.string :email

      t.timestamps
    end
  end
end
