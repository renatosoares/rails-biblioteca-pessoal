class AddPerdidoToBook < ActiveRecord::Migration
  def change
    add_column :books, :perdido, :boolean
  end
end
