class CreateJoinTableBooksOrders < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :orders do |t|
      # t.index [:book_id, :order_id]
      # t.index [:order_id, :book_id]
    end
  end
end
