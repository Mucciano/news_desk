class KeywordDataController < ApplicationController
  def index
  @data1 =  KeywordDatum.find((rand(9)+1))
  @data2 =  KeywordDatum.find((rand(9)+1))
  @data3 =  KeywordDatum.find((rand(9)+1))
  @data4 =  KeywordDatum.find((rand(9)+1))
  @data5 =  KeywordDatum.find((rand(9)+1))
  end
end
