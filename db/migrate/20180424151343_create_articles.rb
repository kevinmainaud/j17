class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title
      t.string :body
      t.string :text
      t.text :description
      t.timestamps
      t.belongs_to :user, index:true
    end
  end
end
