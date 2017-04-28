class CreateRelatorios < ActiveRecord::Migration
  def change
    create_table :relatorios do |t|
      t.date :data
      t.references :departamento, index: true, foreign_key: true
      t.references :setor, index: true, foreign_key: true
      t.string :anomalia
      t.text :descricao
      t.text :acao
      t.string :grupodeanalise

      t.timestamps null: false
    end
  end
end
