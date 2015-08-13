class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :titulo
      t.string :autores
      t.string :editora
      t.integer :anoPublica

      t.timestamps null: false
    end
  end
end
