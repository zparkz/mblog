class AddPublishDateToComments < ActiveRecord::Migration
  def change
    add_column :comments, :publish_date, :datetime
  end
end
