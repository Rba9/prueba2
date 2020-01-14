
def head 
    
    "<html lang='en'> 

    <head> 

    <meta charset='UTF-8'>n
    <meta name='viewport' content='with=device-width, initial-scale=1.0'>

    <meta http-equiv='X-UA-Compatible' content='ie=edge'>

    <title>Document</title>

    </head>

    <body>"
end

def get_data(url)
    url= URI(url)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    JSON.parse(response.read_body)

end
 
def footer
    "\t</body> \n
    <html>"
end