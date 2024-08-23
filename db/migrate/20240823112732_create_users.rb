# rails g scaffold User name age:integer

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end

# rails db:migrate
# == 20240823112732 CreateUsers: migrating ======================================
# -- create_table(:users)
#    -> 0.0009s
# == 20240823112732 CreateUsers: migrated (0.0009s) =============================
