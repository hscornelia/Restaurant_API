namespace :crawling do
  desc "TODO"
  task sample_restaurant_collect: :environment do
    require 'open-uri'
    doc = Nokogiri::HTML(open("https://www.mangoplate.com/top_lists/1914_seoul2019"), nil, 'utf-8')
    @crawl_data = doc.css('.toplist_list .with-review')

    # Crawling event added
    @crawl_data.each do |t|
      
      @title = t.css('.title h3').inner_text
      @point = t.css('.point span').inner_text
      @address = t.css('.etc').inner_text

      puts "#{@title} #{@point} #{@address}"
      SampleCrawlingRestaurant.create(
        title: @title,
        point: @point,
        address: @address
      )

    end

  end

end
