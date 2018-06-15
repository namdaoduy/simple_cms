class CreatePages < ActiveRecord::Migration[5.2]
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name", :limit => 30
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
    # remove_index("pages", "subject_id") # no need
    drop_table :pages
  end
end
