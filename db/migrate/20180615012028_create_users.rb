class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25 # create a column (string)
      t.string "last_name", :limit => 50 # shorthand version of create column
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 50

      # type: binary, boolean, date, datetime, decimal
      # float, integer, string, text, time

      # option:
      # :limit => size    :default => value   :null => true/false
      # :precision => number    :scale => number

      # id column is auto generated

      t.timestamps
      # same as:
      # t.datetime "created_at", :null => false
      # t.datetime "updated_at", :null => false
    end
  end

  def down
    drop_table :users
  end
end
