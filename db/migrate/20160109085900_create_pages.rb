class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :permalink, null: false
      t.text :content, null: false

      t.index :title
      t.index :permalink

      t.timestamps null: false
    end
  end
end
