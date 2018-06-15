class CreateSections < ActiveRecord::Migration[5.2]
  def up
    create_table :sections do |t|
      t.integer "page_id"
      t.string "name", :limit => 30
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type"
      t.text "content"

      t.timestamps
    end
    add_index("sections", "page_id")
  end

  def down
    remove_index("sections", "page_id")
    drop_table :sections
  end
end
