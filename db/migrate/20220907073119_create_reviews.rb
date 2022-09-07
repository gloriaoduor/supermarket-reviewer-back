class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :supermarket_id
      t.integer :shopper_id 
    end
  end 
end
