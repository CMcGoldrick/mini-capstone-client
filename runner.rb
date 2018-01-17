require 'unirest'

url = "http://localhost:3000/product_url"

response = Unirest.get(url)
products = response.body
puts JSON.pretty_generate(products)

