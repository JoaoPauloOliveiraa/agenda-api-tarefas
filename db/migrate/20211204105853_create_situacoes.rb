class CreateSituacoes < ActiveRecord::Migration[6.1]
  def change
    create_table :situacoes do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
