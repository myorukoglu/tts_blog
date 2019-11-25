class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :comment_entry

      t.timestamps
    end
  end
end
