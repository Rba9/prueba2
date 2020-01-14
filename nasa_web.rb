require 'uri'
require 'net/http'
require 'json'

def request (nasa ,fotos)

####api de la nasa ya atcualizado
require 'uri'
require 'net/http'

url = URI("https://api.nasa.gov/planetary/photos?api_key=WdhNNF8aLmZTIr7LJulodhAienAheKJUw2Ikgd6E")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["User-Agent"] = 'PostmanRuntime/7.20.1'
request["Accept"] = '*/*'
request["Cache-Control"] = 'no-cache'
request["Postman-Token"] = 'a6e349dd-3584-4373-bbae-596dfdf7e85c,e1222d96-8c87-48e9-ba59-61a97dc17f59'
JSON.response = http.request(request)
puts response.read_body
end


nasa = []
clean_data['photos'].each do |a|
    a.each do |1..2|
        puts"#{1cameras} if #{2camera}"
        a.each do |value|
            puts|value|
    end
end



