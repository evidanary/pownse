class CreateUsers < ActiveRecord::Migration
  def up
        create_table "users", :force => true do |t|
          t.string   "name"
          t.string   "email"
          t.datetime "created_at",                         :null => false
          t.datetime "updated_at",                         :null => false
          t.string   "password_digest"
          t.string   "password"
          t.string   "remember_token"
          t.boolean  "admin",           :default => false
        end

        add_index "users", ["email"], :name => "index_users_on_email", :unique => true
        add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  end

  def down
  end
end
