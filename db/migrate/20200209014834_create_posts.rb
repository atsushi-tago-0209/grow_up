class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :place
      t.text :image
      t.text :belongings
      t.text :sentence
      t.date :schedule
      t.time :time
      t.timestamps
    end
  end
end
