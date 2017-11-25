class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :nome
      t.text :descricao
      t.string :anexo
      t.integer :prioridade
      t.string :usuario

      t.timestamps
    end
  end
end
