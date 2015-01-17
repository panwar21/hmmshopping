class CreateKeepmeposteds < ActiveRecord::Migration
  def change
    create_table :keepmeposteds do |t|

      t.timestamps
    end
  end
end
