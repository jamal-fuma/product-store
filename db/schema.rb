# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100330163755) do

  create_table "bugs", :force => true do |t|
    t.integer  "user_id",                                    :null => false
    t.string   "title",       :limit => 30,  :default => "", :null => false
    t.string   "description", :limit => 100, :default => "", :null => false
    t.integer  "status",      :limit => 2,                   :null => false
    t.integer  "position",                                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bugs", ["status"], :name => "index_bugs_on_status"
  add_index "bugs", ["title"], :name => "index_bugs_on_title", :unique => true
  add_index "bugs", ["user_id"], :name => "index_bugs_on_user_id"

  create_table "categories", :force => true do |t|
    t.integer  "parent_id",   :limit => 8
    t.string   "name",        :limit => 64,  :default => "",                                      :null => false
    t.string   "description", :limit => 512, :default => "this description needs to be replaced", :null => false
    t.integer  "position",                                                                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["parent_id", "name"], :name => "index_categories_on_parent_id_and_name", :unique => true
  add_index "categories", ["parent_id", "position"], :name => "index_categories_on_parent_id_and_position"

  create_table "category_images", :force => true do |t|
    t.integer  "image_id"
    t.integer  "category_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_position"
  end

  add_index "category_images", ["image_id", "category_position"], :name => "index_category_images_on_image_id_and_category_position"

  create_table "category_products", :force => true do |t|
    t.integer  "category_id",       :null => false
    t.integer  "product_id",        :null => false
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_position"
  end

  add_index "category_products", ["product_id", "category_position"], :name => "index_category_products_on_product_id_and_category_position"

  create_table "comments", :force => true do |t|
    t.integer  "bug_id"
    t.integer  "user_id"
    t.string   "detail",     :limit => 200, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "images", :force => true do |t|
    t.integer  "position"
    t.string   "name",         :limit => 64,  :default => "",                                      :null => false
    t.string   "description",  :limit => 512, :default => "this description needs to be replaced", :null => false
    t.integer  "parent_id"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size"
    t.integer  "height"
    t.integer  "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_images", :force => true do |t|
    t.integer  "image_id"
    t.integer  "page_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_products", :force => true do |t|
    t.integer  "page_id",    :null => false
    t.integer  "product_id", :null => false
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.integer  "parent_id",   :limit => 8
    t.integer  "position"
    t.string   "name",        :limit => 64,  :default => "",                                      :null => false
    t.string   "description", :limit => 512, :default => "this description needs to be replaced", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["parent_id", "name"], :name => "index_pages_on_parent_id_and_name", :unique => true
  add_index "pages", ["parent_id", "position"], :name => "index_pages_on_parent_id_and_position"

  create_table "product_images", :force => true do |t|
    t.integer  "image_id"
    t.integer  "product_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_position"
  end

  add_index "product_images", ["image_id", "product_position"], :name => "index_product_images_on_image_id_and_product_position"

  create_table "products", :force => true do |t|
    t.integer  "supplier_id",                 :default => 6,       :null => false
    t.string   "name",        :limit => 64,   :default => "empty", :null => false
    t.integer  "cost_price",                  :default => 0,       :null => false
    t.integer  "weight",                      :default => 0,       :null => false
    t.string   "order_code",  :limit => 16,   :default => "empty", :null => false
    t.string   "packaging",   :limit => 100,  :default => "empty", :null => false
    t.string   "description", :limit => 1024, :default => "empty", :null => false
    t.string   "filename",    :limit => 200,  :default => "empty", :null => false
    t.integer  "position",                                         :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["name"], :name => "index_products_on_name"

  create_table "roles", :force => true do |t|
    t.string   "name",        :limit => 30,  :default => "Empty",                                 :null => false
    t.string   "description", :limit => 300, :default => "This description needs to be replaced", :null => false
    t.boolean  "active",                     :default => false,                                   :null => false
    t.integer  "position",                                                                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], :name => "index_roles_on_name", :unique => true
  add_index "roles", ["position"], :name => "index_roles_on_position"

  create_table "supplier_products", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "product_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "supplier_position"
  end

  add_index "supplier_products", ["supplier_id", "supplier_position"], :name => "index_supplier_products_on_supplier_id_and_supplier_position"

  create_table "suppliers", :force => true do |t|
    t.string   "name",         :limit => 30,  :default => "",  :null => false
    t.string   "description",  :limit => 100, :default => "",  :null => false
    t.integer  "account",                     :default => 0,   :null => false
    t.integer  "sort_code",                   :default => 0,   :null => false
    t.string   "bank_name",    :limit => 30,  :default => "",  :null => false
    t.integer  "dialing_code",                :default => 207, :null => false
    t.integer  "telephone",                   :default => 0,   :null => false
    t.string   "email",        :limit => 35,  :default => "",  :null => false
    t.integer  "position",                                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suppliers", ["name"], :name => "index_suppliers_on_name", :unique => true
  add_index "suppliers", ["position"], :name => "index_suppliers_on_position"

  create_table "users", :force => true do |t|
    t.integer  "role_id"
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
