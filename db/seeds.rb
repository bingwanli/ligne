require 'nokogiri'
require 'open-uri'

brand = Brand.create({ id: 1,
  name: 'Mara Hoffman',
  description: "Mara Hoffman founded her label in 2000 after graduating from Parsons School of Design in New York City. Fifteen years later, the brand committed itself to implementing more sustainable and responsible practices. In an effort to foster mindful consumption habits, the brand maintains an open conversation about its approach and encourages consumers to reevaluate the relationship society has with clothing. The company continues to focus on sustainable materials, processes, and production in order to improve and extend each garment’s life. President and Creative Director, Mara Hoffman, presents collections with a devotion to color, each inspired by and in celebration of women.",
  country: 'US',
  logo_url: 'http://gfiny.com/wp-content/uploads/2016/02/mara-hoffman.jpg' })

BrandImage.create({

})

# url = 'https://www.marahoffman.com/shop-all'
# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.item').each do |e|
#   price = e.search('.product-text .price').inner_text.scan(/\d+[.]\d+/).first.to_i
#   puts price
#   image_url = e.search('.product-image img').attribute('src').value.to_s
#   puts image_url
#   e.search('.product-name a').each do |i|
#       puts i.attribute('title')
#       puts i.attribute('href')
#       puts 1
#   end
# end

Product.create({
  price: 650,
  name: "ELISABETTA DRESS",
  url: "https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-sheer-black-red-dot",
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/e/l/elisabetta-puff-shoulder-shift-dress-sheer-black-red-dot_1.jpg",
  brand_id: 1,
  })
Product.create({
  price: 315,
  image_url: "https://www.marahoffman.com/shop-all/rose-strapless-top-red",
  name: "ROSE TOP",
  url: "https://www.marahoffman.com/shop-all/rose-strapless-top-red",
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/r/o/rose-strapless-top-red_1.jpg",
  brand_id: 1,
  })
Product.create({
  price: 550,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/j/u/juno-button-front-pocket-dress-navy-white-stitching-1_1.jpg",
  name: "JUNO DRESS",
  url: "https://www.marahoffman.com/shop-all/juno-button-front-pocket-dress-navy-white-stitching",
  brand_id: 1,
  })
Product.create({
  price: 650,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/a/d/adriana-sleeveless-zip-front-a-line-dress-black-stripe-1_3.jpg",
  name: "ADRIANA DRESS",
  url: "https://www.marahoffman.com/shop-all/adriana-sleeveless-zip-front-a-line-dress-black-stripe",
  brand_id: 1,
  })
Product.create({
  price: 225,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/e/d/edmonia-bishop-sleeve-turtleneck-dress-sheer-lime-green_1_2.jpg",
  name: "EDMONIA DRESS",
  url: "https://www.marahoffman.com/shop-all/edmonia-full-sleeve-turtleneck-dress-sheer-lime-green",
  brand_id: 1,
  })
Product.create({
  price: 350,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/v/e/venus-ribbed-knit-scoop-neck-bodysuit-white_2.jpg",
  name: "VENUS BODYSUIT",
  url: "https://www.marahoffman.com/shop-all/venus-ribbed-knit-scoop-neck-bodysuit-white",
  brand_id: 1,
  })
Product.create({
  price: 100,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/j/a/jade-trouser-pant-black-stripe-4.jpg",
  name: "JADE PANT",
  url: "https://www.marahoffman.com/shop-all/jade-trouser-pant-black-stripe",
  brand_id: 1,
  })
Product.create({
  price: 295,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/v/e/veronica-collared-button-front-knit-cardigan-sheer-black.pg.jpg",
  name: "VERONICA SWEATER",
  url: "https://www.marahoffman.com/shop-all/veronica-collared-button-front-sweater-sheer-black",
  brand_id: 1,
  })
Product.create({
  price: 525,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/d/a/daija-maxi-shift-dress-cream-black-color-block_1.jpg",
  name: "DAIJA DRESS",
  url: "https://www.marahoffman.com/shop-all/daija-maxi-shift-dress-cream-black-color-block",
  brand_id: 1,
  })
Product.create({
  price: 340,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/f/o/fontana-high-waisted-flat-front-straight-pant-white_2.jpg",
  name: "FONTANA PANT",
  url: "https://www.marahoffman.com/shop-all/fontana-high-waisted-flat-front-straight-pant-white",
  brand_id: 1,
  })
Product.create({
  price: 495,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/e/l/elisabetta-puff-shoulder-shift-dress-white_1.jpg",
  name: "ELISABETTA DRESS",
  url: "https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-white",
  brand_id: 1,
  })


