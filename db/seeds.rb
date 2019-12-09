require 'nokogiri'
require 'open-uri'

Brand.destroy_all
Product.destroy_all

brand = Brand.create({ name: 'Mara Hoffman',
  description: "Mara Hoffman founded her label in 2000 after graduating from Parsons School of Design in New York City. Fifteen years later, the brand committed itself to implementing more sustainable and responsible practices. In an effort to foster mindful consumption habits, the brand maintains an open conversation about its approach and encourages consumers to reevaluate the relationship society has with clothing. The company continues to focus on sustainable materials, processes, and production in order to improve and extend each garment’s life. President and Creative Director, Mara Hoffman, presents collections with a devotion to color, each inspired by and in celebration of women.",
  country: 'USA',
  logo_url: 'http://gfiny.com/wp-content/uploads/2016/02/mara-hoffman.jpg' })

url = 'https://www.marahoffman.com/shop-all'
html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.item').each do |e|
  image_url = e.search('.product-text .price').inner_text
  price = e.search('.product-image img').attribute('src')
  e.search('.product-name a').each do |i|
    product = Product.create({
      name: i.attribute('title'),
      url: i.attribute('href'),
      image_url: image_url,
      price: price,
      brand_id: 2
    })
  end
end
