class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :request_id

      t.timestamps
    end
    add_index :pages, :request_id, unique: true
  end
end
