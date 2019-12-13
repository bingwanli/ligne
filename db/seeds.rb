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

prod12 = Product.create({
  price: 268,
  name: "Meredith Gold Foil Maxi Dress",
  url: "https://www.freepeople.com/shop/meredith-gold-foil-maxi-dress/?category=dresses&color=070",
  brand_id: 32,
  })

prod12.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/54746458_070_0?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod12.save

prod13 = Product.create({
  price: 128,
  name: "Arizona Nights Embellished Slip",
  url: "https://www.freepeople.com/shop/arizona-nights-embellished-slip/?category=dresses&color=052",
  brand_id: 32,
  })

prod13.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/42328740_052_a?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod13.save

prod14 = Product.create({
  price: 128,
  name: "Layered Up Mesh Midi Slip",
  url: "https://www.freepeople.com/shop/layered-up-mesh-midi-slip/?category=dresses&color=011",
  brand_id: 32,
  })

prod14.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/54635586_011_a?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod14.save

prod15 = Product.create({
  price: 108,
  name: "Nicole Sweater Dress",
  url: "https://www.freepeople.com/shop/nicole-sweater-dress/?category=dresses&color=014",
  brand_id: 32,
  })

prod15.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/54542881_014_0?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod15.save

prod16 = Product.create({
  price: 168,
  name: "Retro Love Suede Mini Dress",
  url: "https://www.freepeople.com/shop/retro-love-suede-mini-dress/?category=dresses&color=081",
  brand_id: 32,
  })

prod16.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/38388161_081_a?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod16.save

prod17 = Product.create({
  price: 68,
  name: "Scarlett Tank",
  url: "https://www.freepeople.com/shop/scarlett-tank2/?category=whats-new&color=001",
  brand_id: 32,
  })

prod17.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/54680996_001_a?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod17.save

prod18 = Product.create({
  price: 78,
  name: "Stones Flocked Leopard Tongue Tee",
  url: "https://www.freepeople.com/shop/stones-flocked-leopard-tongue-tee/?category=whats-new&color=001&quantity=1&type=REGULAR",
  brand_id: 32,
  })

prod18.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/53277430_001_a?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod18.save

prod19 = Product.create({
  price: 128,
  name: "Mad Love Wrap Skirt",
  url: "https://www.freepeople.com/shop/mad-love-wrap-skirt/?category=holiday-collection&color=069",
  brand_id: 32,
  })

prod19.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/54690250_069_0?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod19.save


prod20 = Product.create({
  price: 108,
  name: "Birch Wide Leg Pant",
  url: "https://www.freepeople.com/shop/birch-wide-leg-pant/?category=pants&color=001",
  brand_id: 32,
  })

prod20.remote_image_url_url = "https://s7d5.scene7.com/is/image/FreePeople/53469169_001_a?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain"

prod20.save

prod21 = Product.create({
  price: 245,
  name: "THE LIV in Rosalita",
  url: "https://realisationpar.com/the-liv-rosalita/",
  brand_id: 33,
  })

prod21.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/500x659/products/174/3059/DSC_5892AS__09250.1556949135.jpg?c=2"

prod21.save

prod22 = Product.create({
  price: 210,
  name: "THE IGGY",
  url: "https://realisationpar.com/the-iggy-yellow-polka-dot/",
  brand_id: 33,
  })

prod22.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/168/2907/IGGY_BlkYellowPD_Studio_1__30356__38331.1549337501.jpg?c=2"

prod22.save

prod23 = Product.create({
  price: 210,
  name: "THE JEET",
  url: "https://realisationpar.com/the-jeet-flower-power/",
  brand_id: 33,
  })

prod23.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/139/2299/JEET_FlowerPower_Studio_1__81611__14957.1549337137.jpg?c=2"

prod23.save

prod24 = Product.create({
  price: 210,
  name: "THE TEALE",
  url: "https://realisationpar.com/the-teale-wild-cherry/",
  brand_id: 33,
  })

prod24.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/111/2995/TEALE_WildCherry_Studio_1__83945__05100.1549337559.jpg?c=2"

prod24.save

prod25 = Product.create({
  price: 100,
  name: "THE ANNA",
  url: "https://realisationpar.com/the-ana-white-squiggle/",
  brand_id: 33,
  })

prod25.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/150/2432/ANA_WhiteSquiggle_Studio_1__38417__13723.1549337212.jpg?c=2"

prod25.save

prod26 = Product.create({
price: 210,
name: "THE MARYJANE",
url: "https://realisationpar.com/the-mary-jane-sunflower/",
brand_id: 33,
 })

prod26.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/118/2884/MARYJANE_Sunflower_Studio_1__81738__28134.1549337487.jpg?c=2"

prod26.save

prod27 = Product.create({
price: 180,
name: "THE KAIA TIGER",
url: "https://realisationpar.com/the-kaia-tiger/",
brand_id: 33,
 })

prod27.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/143/2347/KAIA_Tiger_Studio_1__14726__43853.1549337163.jpg?c=2"

prod27.save

prod28 = Product.create({
price: 180,
name: "THE VIVIENNE
",
url: "https://realisationpar.com/the-vivienne-purple-haze/",
brand_id: 33,
 })

prod28.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/140/2310/VIVIENNE_PurpleHaze_Studio_1__89613__22286.1549337143.jpg?c=2"

prod28.save

prod29 = Product.create({
price: 195,
name: "THE LUNA",
url: "https://realisationpar.com/the-luna-black-strawberry/",
brand_id: 33,
 })

prod29.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/190/3167/Capture0028-2__52189.1559424258.jpg?c=2"

prod29.save

prod30 = Product.create({
price: 220,
name: "THE CAPULET",
url: "https://realisationpar.com/the-capulet-jupiter/",
brand_id: 33,
 })

prod30.remote_image_url_url = "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/180/3096/Capulet_Jupiter_Ecom_Web_Front__92771.1558639393.jpg?c=2"

prod30.save

brimg1 = BrandImage.create({
  brand_id: 31
})


brimg1.remote_url_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHYo37IYmBGu05a_Uo7n5WQfBFU4i77D8SzGNL65gXTRv0U2lFHQ&s"

brimg1.save
