class CreatePerfilUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :perfil_usuarios do |t|
      t.references :perfil, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
