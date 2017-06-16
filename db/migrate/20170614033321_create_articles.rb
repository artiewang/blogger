class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      # t引用刚建的表
      t.string :title
      t.text :body

      t.timestamps # 自动创建了两列create_at 和 update_at
    end
  end
end
