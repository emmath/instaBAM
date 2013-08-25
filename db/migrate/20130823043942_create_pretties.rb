class CreatePretties < ActiveRecord::Migration
  def change
    create_table :pretties do |t|

      t.timestamps
    end
  end
end
