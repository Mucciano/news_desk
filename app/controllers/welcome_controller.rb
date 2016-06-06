class WelcomeController < ApplicationController

  include Scraper

    def index
    @ny       =  Scraper.ny_times
    @dem      = Scraper.dem_now
    @guard    = Scraper.guardian
    # @spiegel  = Scraper.spiegel
    @bbc      = Scraper.bbc
    @wa_post  = Scraper.wa_post
    @cnn      = Scraper.cnn

    @ny_data      = word_check(@ny)
    @dem_data     = word_check(@dem)
    @guard_data   = word_check(@guard)
    @bbc_data     = word_check(@bbc)
    @wa_post_data = word_check(@wa_post)
    @cnn_data     = word_check(@cnn)

    end

end
