class FixArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :body, :text
    add_reference :articles, :user, index: true
    add_foreign_key :articles, :users
  end
end
