class CreateSupermarkets < ActiveRecord::Migration[6.1]
  def change
    create_table :supermarkets do |t|
      t.string :name 
    end 
  end
end
