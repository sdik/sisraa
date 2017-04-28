class CreateFishbones < ActiveRecord::Migration
  def change
    create_table :fishbones do |t|
      t.string :grupo
      t.references :relatorio, index: true, foreign_key: true
      t.string :causa
      t.boolean :relevancia
      t.text :acao
      t.references :responsavel, index: true, foreign_key: true
      t.date :prazo

      t.timestamps null: false
    end
  end
end
