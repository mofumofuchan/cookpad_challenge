class AddDrawingToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :drawing, :string
  end
end
