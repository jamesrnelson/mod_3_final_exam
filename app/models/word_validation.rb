class WordValidation
  attr_reader :search
  def initialize(search)
    @search = search
  end

  def raw_search
    check_response
    JSON.parse(response.body, symbolize_names: true)
  end

  def check_response
    if response.body.include?("<!")
      "raise error"
    end
  end

  def word
    Word.new(raw_search[:results].first)
  end

  def connection
    Faraday.new(url: "https://od-api.oxforddictionaries.com:443/api/v1/inflections/en/#{search}")
  end

  def response
    connection.get do |req|
      req.headers['Accept'] = 'application/json'
      req.headers['app_id'] = ENV['OXFORD_APPLICATION_ID']
      req.headers['app_key'] = ENV['OXFORD_APPLICATION_KEY']
    end
  end
end
