<<<<<<< HEAD
require 'nokogiri'
require 'open-uri'

brand = Brand.create({ id: 1,
  name: 'Mara Hoffman',
  description: "Mara Hoffman founded her label in 2000 after graduating from Parsons School of Design in New York City. Fifteen years later, the brand committed itself to implementing more sustainable and responsible practices. In an effort to foster mindful consumption habits, the brand maintains an open conversation about its approach and encourages consumers to reevaluate the relationship society has with clothing. The company continues to focus on sustainable materials, processes, and production in order to improve and extend each garment’s life. President and Creative Director, Mara Hoffman, presents collections with a devotion to color, each inspired by and in celebration of women.",
  country: 'US',
  logo_url: 'http://gfiny.com/wp-content/uploads/2016/02/mara-hoffman.jpg' })

url = 'https://www.marahoffman.com/shop-all'
html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.item').each do |e|
  price = e.search('.product-text .price').inner_text.scan(/\d+[.]\d+/).first.to_i
  image_url = e.search('.product-image img').attribute('src').value.to_s
  e.search('.product-name a').each do |i|
    Product.create({
      name: i.attribute('title'),
      url: i.attribute('href'),
      image_url: image_url,
      price: price,
      brand_id: 1
    })
  end
end
prod1 = Product.create({
  price: 650,
  name: "ELISABETTA DRESS",
  url: "https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-sheer-black-red-dot",
  brand_id: 31,
  })

prod1.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/e/l/elisabetta-puff-shoulder-shift-dress-sheer-black-red-dot_1.jpg"

prod1.save

prod2 = Product.create({
  price: 315,
  name: "ROSE TOP",
  url: "https://www.marahoffman.com/shop-all/rose-strapless-top-red",
  brand_id: 31,
  })

prod2.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/r/o/rose-strapless-top-red_1.jpg"

prod2.save

prod3 = Product.create({
  price: 550,
  name: "JUNO DRESS",
  url: "https://www.marahoffman.com/shop-all/juno-button-front-pocket-dress-navy-white-stitching",
  brand_id: 31,
  })

prod3.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/j/u/juno-button-front-pocket-dress-navy-white-stitching-1_1.jpg"

prod3.save

prod4 = Product.create({
  price: 650,
  name: "ADRIANA DRESS",
  url: "https://www.marahoffman.com/shop-all/adriana-sleeveless-zip-front-a-line-dress-black-stripe",
  brand_id: 31,
  })

prod4.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/a/d/adriana-sleeveless-zip-front-a-line-dress-black-stripe-1_3.jpg"

prod4.save

prod5 = Product.create({
  price: 225,
  name: "EDMONIA DRESS",
  url: "https://www.marahoffman.com/shop-all/edmonia-full-sleeve-turtleneck-dress-sheer-lime-green",
  brand_id: 31,
  })

prod5.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/e/d/edmonia-bishop-sleeve-turtleneck-dress-sheer-lime-green_1_2.jpg"

prod5.save

prod6 = Product.create({
  price: 350,
  image_url: "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/v/e/venus-ribbed-knit-scoop-neck-bodysuit-white_2.jpg",
  name: "VENUS BODYSUIT",
  url: "https://www.marahoffman.com/shop-all/venus-ribbed-knit-scoop-neck-bodysuit-white",
  brand_id: 31,
  })

prod6.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/v/e/venus-ribbed-knit-scoop-neck-bodysuit-white_2.jpg"

prod6.save

prod7 = Product.create({
  price: 100,
  name: "JADE PANT",
  url: "https://www.marahoffman.com/shop-all/jade-trouser-pant-black-stripe",
  brand_id: 31,
  })

prod7.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/j/a/jade-trouser-pant-black-stripe-4.jpg"

prod7.save

prod8 = Product.create({
  price: 295,
  name: "VERONICA SWEATER",
  url: "https://www.marahoffman.com/shop-all/veronica-collared-button-front-sweater-sheer-black",
  brand_id: 31,
  })

prod8.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/v/e/veronica-collared-button-front-knit-cardigan-sheer-black.pg.jpg"

prod8.save

prod9 = Product.create({
  price: 525,
  name: "DAIJA DRESS",
  url: "https://www.marahoffman.com/shop-all/daija-maxi-shift-dress-cream-black-color-block",
  brand_id: 31,
  })

prod9.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/d/a/daija-maxi-shift-dress-cream-black-color-block_1.jpg"

prod9.save

prod10 = Product.create({
  price: 340,
  name: "FONTANA PANT",
  url: "https://www.marahoffman.com/shop-all/fontana-high-waisted-flat-front-straight-pant-white",
  brand_id: 31,
  })

prod10.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/f/o/fontana-high-waisted-flat-front-straight-pant-white_2.jpg"

prod10.save

prod11 = Product.create({
  price: 495,
  name: "ELISABETTA DRESS",
  url: "https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-white",
  brand_id: 31,
  })

prod11.remote_image_url_url = "https://www.marahoffman.com/media/catalog/product/cache/1/image/758x1136/17f82f742ffe127f42dca9de82fb58b1/e/l/elisabetta-puff-shoulder-shift-dress-white_1.jpg"

prod11.save
