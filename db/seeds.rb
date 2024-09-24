# db/seeds.rb

# Tạo 10 tác giả
authors = []
10.times do |i|
  authors << Author.create(name: "Author #{i + 1}")
end

# Tạo 10 nhà cung cấp
suppliers = []
10.times do |i|
  suppliers << Supplier.create(name: "Supplier #{i + 1}")
end

# Tạo 10 cuốn sách
books = []
10.times do |i|
  books << Book.create(
    title: "Book Title #{i + 1}",
    year_published: 2000 + (i + 1), # Năm xuất bản từ 2001 đến 2010
    price: (10 + (i + 1)).to_d, # Giá từ 11.0 đến 20.0
    out_of_print: (i + 1).even?, # Sách sẽ được đánh dấu là out_of_print nếu i là số chẵn
    author: authors.sample, # Lấy ngẫu nhiên một tác giả
    supplier: suppliers.sample # Lấy ngẫu nhiên một nhà cung cấp
  )
end

# Tạo 10 khách hàng
customers = []
10.times do |i|
  customers << Customer.create(name: "Customer #{i + 1}", email: "customer#{i + 1}@example.com")
end

# Tạo 10 đơn hàng
orders = []
10.times do
  orders << Order.create(customer: customers.sample, status: rand(0..3)) # Chọn ngẫu nhiên khách hàng và trạng thái
end

# Tạo 10 đánh giá
reviews = []
10.times do |i|
  reviews << Review.create(
    customer: customers.sample,
    book: books.sample,
    rating: rand(1..5), # Đánh giá ngẫu nhiên từ 1 đến 5
    comment: "Comment for Book Title #{i + 1}",
    state: rand(0..2) # Chọn ngẫu nhiên trạng thái
  )
end
