module Scraper

  require 'nokogiri'
  require 'open-uri'


  def word_check(arr)
    election_words      = ['Hillary', 'Hillary\'s', 'Trump', 'Trump\'s', 'Democrat', 'Republican', 'Democrats', 'Republicans', 'election', 'GOP', 'DNC', 'Polls', 'Voters', 'Candidates', 'Obama', 'Obama\'s', 'Lame-Duck',
                          'Washington', 'Lawmakers', 'D.C.']
    intlconflict_words  = ['Iraq', 'Syria', 'Afghansitan', 'Iran', 'Isis', 'ISIS', 'Terrorist', 'Terrorists', 'War', 'Troops', 'Drone', 'Drones', 'Drone-Strike', 'Arms', 'Casualties', 'Refugees']
    economic_words      = ['Stocks', 'Bonds', 'Banks', 'Bankers', 'Dollar', 'ECB', 'Fed', 'interest-rates', 'Wall Street', 'Cash', 'Automakers', 'Insurers', 'Billion', 'Billionaires', 'Business', 'Economy']
    tech_words          = ['Amazon', 'Google', 'Facebook', 'Uber', 'Smartphones', 'Apple', 'Internet', 'Tech', 'Venture Capital', 'Smartphone', 'Samsung', 'Wireless', 'Online', 'Robot', 'Robots', 'Silicon Valley', 'iPhone']

    election_array      = []
    intlconflict_array  = []
    economic_array      = []
    tech_array          = []

    arr.to_a.join(' ').split.each { |word| if election_words.include?(word)      then election_array.push(word) end}
    arr.to_a.join(' ').split.each { |word| if intlconflict_words.include?(word)  then intlconflict_array.push(word) end}
    arr.to_a.join(' ').split.each { |word| if economic_words.include?(word)      then economic_array.push(word) end}
    arr.to_a.join(' ').split.each { |word| if tech_words.include?(word)          then tech_array.push(word) end}

   data_array  = [election_array.size, intlconflict_array.size, economic_array.size, tech_array.size]

      return data_array
  end




  def self.ny_times
    page = Nokogiri::HTML(open("http://www.nytimes.com/"))
    headlines =  page.css('h2')
    return headlines
  end

  def self.dem_now
    page = Nokogiri::HTML(open("http://www.democracynow.org/"))
    headlines = page.css('h6.subheader')
    return headlines
  end

  def self.guardian
    page = Nokogiri::HTML(open("http://www.theguardian.com/us"))
    headlines = page.css('a')
    return headlines
  end

  def self.spiegel
    page = Nokogiri::HTML(open("http://www.spiegel.de/international/"))
    headlines = page.css('span.headline')
    return headlines
  end

  def self.bbc
    page = Nokogiri::HTML(open("http://www.bbc.com/news"))
    headlines = page.css('span')
    return headlines
  end

  def self.wa_post
    page = Nokogiri::HTML(open("https://www.washingtonpost.com/"))
    headlines = page.css('a')
    return headlines
  end

  def self.cnn
    page = Nokogiri::HTML(open("http://www.cnn.com/"))
    headlines = page.css('span')
    return headlines
  end

end
