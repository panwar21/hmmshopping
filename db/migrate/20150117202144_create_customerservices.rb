class CreateCustomerservices < ActiveRecord::Migration
  def change
    create_table :customerservices do |t|

      t.timestamps
    end
  end
end
