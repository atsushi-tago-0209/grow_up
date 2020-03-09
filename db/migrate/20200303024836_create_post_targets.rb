class CreatePostTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :post_targets do |t|
      t.references :post ,foreign_key: true
      t.references :target ,foreign_key: true
      t.timestamps
    end
  end
end
