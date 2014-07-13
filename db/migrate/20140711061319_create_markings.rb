class CreateMarkings < ActiveRecord::Migration
  def change
    create_table :markings do |t|
      t.integer :user_id
      t.integer :micropost_id

      t.timestamps
    end
    add_index :markings, :user_id
    add_index :markings, [:user_id, :micropost_id], unique: true
  end
end
