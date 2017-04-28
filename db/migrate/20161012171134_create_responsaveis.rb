class CreateResponsaveis < ActiveRecord::Migration
  def change
    create_table :responsaveis do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
