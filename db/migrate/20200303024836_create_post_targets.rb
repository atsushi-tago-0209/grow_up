class CreatePostTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :post_targets do |t|
      t.integer :post_id ,foreign_key: true
      t.integer :target_id ,foreign_key: true
      t.timestamps
    end
  end
end
