class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :numero
      t.references :indicativo

      t.timestamps
    end
    add_index :items, :indicativo_id
  end
end
