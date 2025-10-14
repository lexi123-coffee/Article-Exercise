class Article
  attr_accessor :title, :headline, :published_on, :body, :author

  def initialize(title: nil, headline: nil, published_on: nil, body: nil, author: nil)
    @title         = title
    @headline      = headline
    @published_on  = published_on
    @body          = body
    @author        = author
  end

  def words_count
    return 0 if @body.nil? || @body.strip.empty?
     
    @body.gsub(/[^a-zA-Z\s]/, '').split.size
  end
end


