class AddPublishDateToComments < ActiveRecord::Migration
  def change
    add_column :comments, :publish_date, :Datetime
  end
end
