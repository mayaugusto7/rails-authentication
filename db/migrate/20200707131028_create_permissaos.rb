class CreatePermissaos < ActiveRecord::Migration[6.0]
  def change
    create_table :permissaos do |t|
      t.string :permissao

      t.timestamps
    end
  end
end
