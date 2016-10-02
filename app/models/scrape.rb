require 'open-uri'
require 'nokogiri'

class Scrape
  def generate

    main_page = open("http://tvtropes.org/")
    html_doc_main = Nokogiri::HTML(main_page)

    random_trope = html_doc_main.search('.random-btns .trope a').first.attribute('href').value

    content_url ="http://tvtropes.org/#{random_trope}"

    content_page = open(content_url)
    html_doc_content = Nokogiri::HTML(content_page)

    title = html_doc_content.search('h1').first.text.strip

    description = html_doc_content.search('.page-content').first.text.strip.split(" ").first(200).join(" ")

    {
      title: title,
      description: description,
      trope_url: content_url
    }
  end

  # def description_sanitizer(description)
  #   result = []
  #   description.split(" ").each do |word|
  #    if word == "Examples:"
  #      return
  #    else  
  #      result << word
  #    end  
  #  end  
  #  result.join(" ")
 # end

end