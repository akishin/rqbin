class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.references :page, index: true
      t.string :http_method
      t.text :params
      t.text :headers
      t.text :raw_post

      t.timestamps
    end
  end
end
