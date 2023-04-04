class AddOrderIdToUserBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :user_books, :order_id, :integer
  end
end
