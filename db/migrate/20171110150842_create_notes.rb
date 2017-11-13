class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :text
      t.integer :sort

      t.timestamps
    end
  end
end
