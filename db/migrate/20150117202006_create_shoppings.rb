class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|

      t.timestamps
    end
  end
end
