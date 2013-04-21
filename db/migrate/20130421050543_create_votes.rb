class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :up
      t.references :user
      t.references :link

      t.timestamps
    end
    add_index :votes, :user_id
    add_index :votes, :link_id
  end
end
