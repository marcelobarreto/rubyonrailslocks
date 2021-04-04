class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.integer :version, null: false, default: 1

      t.timestamps
    end
  end
end
