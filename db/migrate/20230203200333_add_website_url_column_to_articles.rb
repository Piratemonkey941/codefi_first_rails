class AddWebsiteUrlColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :website_url, :string
  end
end
