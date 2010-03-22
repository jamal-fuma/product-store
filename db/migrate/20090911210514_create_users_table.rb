class CreateUsersTable < ActiveRecord::Migration
  def self.up
  create_table "users", :force => true do |t|
    t.integer  "role_id"
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.timestamps
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  end

  def self.down
    drop_table :users
  end
end
