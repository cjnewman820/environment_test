class CreateIds < ActiveRecord::Migration[6.1]
  def change
    create_table :ids do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
