class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :in_favor?, default: nil
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
