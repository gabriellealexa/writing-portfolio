class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :publication
      t.string :summary
      t.string :img
      t.string :link
      
      t.timestamps
    end
  end
end
