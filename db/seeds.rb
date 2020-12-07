# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wine.delete_all
User.delete_all
Love.delete_all

u1 = User.create(name: "Denise")
u2 = User.create(name: "Amanda")
u3 = User.create(name: "Nicholas")

wine1 = Wine.create(name: "AXR - Cabernet Sauvignon", img_url: "https://www.axrnapavalley.com/assets/images/products/pictures/DSC_7308-Edit1.png", year: 2015, kind: "Blend", cost: "$84", region: "Napa Valley")

wine2 = Wine.create(name: "Duckhorn - The Discussion", img_url: "https://www.duckhornwineshop.com/assets/images/products/pictures/2016-duckhorn-vineyards-napa-valley-the-discussion-red-wine-TGBBQZ.jpg", year: 2016, kind: "Blend", cost: "$155", region: "Napa Valley")

wine3 = Wine.create(name: "Palmaz Vineyards - Gaston", img_url: "https://d2c15us614ym2e.cloudfront.net/images/products/2020/06/2016_Palmaz_Vineyards_Gaston_Cabernet_Sauvignon_Napa_Valleybottle_compressed.jpg", year: 2017, kind: "Cabernet Sauvignon", cost: "$220", region: "Napa Valley")

wine4 = Wine.create(name: "Paraduxx - Red Wine Cork Tree Vineyard", img_url: "https://www.duckhornwineshop.com/assets/images/products/pictures/2016-paraduxx-red-wine-nv-cork-tree-vineyard.jpg", year: 2016, kind: "Blend", cost: "$82.00", region: "Napa Valley")

wine5 = Wine.create(name: "AXR - Ganzin Chardonnay", img_url: "https://www.axrnapavalley.com/assets/images/products/pictures/axr.ganzinChard-OXDSPQ.png", year: 2018, kind: "Cabernet Sauvignon", cost: "$72.00", region: "Napa Valley")

c1 = Comment.create(comment: "This wine is excellent!", user: u1, wine: wine1)
c1 = Comment.create(comment: "This wine sucks!!", user: u2, wine: wine2)

love1 = Love.create(user: u1, wine: wine2)
love2 = Love.create(user: u2, wine: wine1)
