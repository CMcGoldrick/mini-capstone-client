require 'unirest'

system "clear"

client_params = {}

print "id: "
client_params[:id] = gets.chomp

print "name: "
client_params[:name] = gets.chomp

print "price: "
client_params[:price] = gets.chomp

print "image_url: "
client_params[:image_url] = gets.chomp

response = Unirest.post(
                        "http://localhost:3000/products",
                        parameters: client_params
  )

product_data = response.body

puts JSON.pretty_generate(product_data)



  # client_params = {}

  # print "Title: "
  # client_params[:title] = gets.chomp

  # print "Chef: "
  # client_params[:chef] = gets.chomp

  # print "Ingredients: "
  # client_params[:ingredients] = gets.chomp

  # print "Directions: "
  # client_params[:directions] = gets.chomp

  # response = Unirest.post(
  #                         "http://localhost:3000/recipes",
  #                         parameters: client_params
  #                         )
  # recipe_data = response.body

  # puts JSON.pretty_generate(recipe_data)





# url = "http://localhost:3000/product_url"

# response = Unirest.get(url)
# products = response.body
# puts JSON.pretty_generate(products)