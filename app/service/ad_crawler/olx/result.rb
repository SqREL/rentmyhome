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
end