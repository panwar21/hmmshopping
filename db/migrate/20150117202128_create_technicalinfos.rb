class CreateTechnicalinfos < ActiveRecord::Migration
  def change
    create_table :technicalinfos do |t|

      t.timestamps
    end
  end
end
