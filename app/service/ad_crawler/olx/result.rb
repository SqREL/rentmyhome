class AdCrawler::OLX::Result
  attr_reader :json

  def initialize(json)
    @json = json.with_indifferent_access
  end

  def added_at
    json[:created]
  end

  def title
    json[:title]
  end

  def description
    json[:description]
  end

  def url
    json[:url]
  end

  def price
    json[:list_label_ad].scan(/\d/).join('')
  end

  def currency
    currency = json[:list_label_ad].match(/\$/) ? 'USD' : 'UAH'
  end

  def to_param
    {
      added_at: added_at,
      title: title,
      description: description,
      url: url,
      price: price,
      currency: currency,
      service: 'OLX.ua'
    }
  end
end