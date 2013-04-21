class AddExpDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :exp_date, :Date
  end
end
