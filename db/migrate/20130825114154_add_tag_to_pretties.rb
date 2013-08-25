class AddTagToPretties < ActiveRecord::Migration
  def change
    add_column :pretties, :tag, :string
  end
end
