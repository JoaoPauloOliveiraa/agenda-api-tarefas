class CreateTarefas < ActiveRecord::Migration[6.1]
  def change
    create_table :tarefas do |t|
      t.bigint :id_evento, null: false
      t.string :titulo, null:false
      t.text :descricao, null:false
      t.references :situacao, null: false, foreign_key: true
      t.datetime :data_criacao, null:false
      t.datetime :data_atualizacao, null:false

      t.timestamps
    end
  end
end
