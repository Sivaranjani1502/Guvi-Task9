// 1. Find all products
db.products.find({})

// 2. Products price between 400 and 800
db.products.find({ price: { $gte: 400, $lte: 800 } })

// 3. Products price NOT between 400 and 600
db.products.find({ $or: [ { price: { $lt: 400 } }, { price: { $gt: 600 } } ] })

// 4. List four products with price > 500
db.products.find({ price: { $gt: 500 } }).limit(4)

// 5. Product name and material of each product
db.products.find({}, { product_name: 1, product_material: 1, _id: 0 })

// 6. Product with row id 10
db.products.find({ id: "10" })

// 7. Only product name and material
db.products.find({}, { product_name: 1, product_material: 1, _id: 0 })

// 8. Products with material containing "soft"
db.products.find({ product_material: /soft/i })

// 9. Products with color = indigo and price = 492
db.products.find({ product_color: "indigo", price: 492 })

// 10. Delete products with price = 28
db.products.deleteMany({ price: 28 })
