class AddSnippet < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.references :user
      t.integer :gist_id
      t.string :name
      t.string :language
      t.text :description

      t.timestamps
    end
  end
end
