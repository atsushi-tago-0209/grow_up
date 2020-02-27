class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.string :target,  null: false 
      t.timestamps
    end
  end
end
