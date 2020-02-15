class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :place
      t.string :target
      t.text :belongings
      t.text :sentence
      t.date :schedule
      t.text :image
      t.time :time
      t.timestamps
    end
  end
end
