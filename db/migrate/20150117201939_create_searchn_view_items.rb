class CreateSearchnViewItems < ActiveRecord::Migration
  def change
    create_table :searchn_view_items do |t|

      t.timestamps
    end
  end
end
