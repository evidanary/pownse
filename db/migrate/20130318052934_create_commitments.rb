class CreateCommitments < ActiveRecord::Migration
  def up
    create_table :commitments do |t|
      t.string :name
      t.boolean :recurring
      t.integer :wager
      t.integer :user_id
      t.date :next_due_date
      t.timestamps
    end
    add_index :commitments, [:user_id, :created_at]

  end

  def down
  end
end
