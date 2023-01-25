require 'json'
#require 'net/http'

class CatFacts
    
    def initialize(http)
        @http = http
    end
    
  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = @http.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end