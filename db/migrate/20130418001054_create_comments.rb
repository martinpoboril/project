class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :your_comment
      t.integer :traveler_id

      t.timestamps
    end
  end
end
