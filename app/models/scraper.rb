require 'mechanize'

class Scraper
  def scrape(url)
    agent = Mechanize.new
    blob = ""
    page = agent.get(url)
    page.search('tr').each do |body|
      blob += body.text + "\n"
    end
    return blob
  end
end
