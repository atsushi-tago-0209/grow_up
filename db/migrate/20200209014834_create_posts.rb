class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title,   null:false
      t.string :place,   null:false
      t.text :image
      t.text :belongings,null:false
      t.text :sentence,  null:false
      t.date :schedule,  null:false
      t.time :time,      null:false
      t.time :endtime,   null:false
      t.integer :capacity,  null:false
      t.integer :fee ,    null:false
      # t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
