class WordValidation
  attr_reader :search
  def initialize(search)
    @search = search
  end

  def raw_search

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
