class Article
  attr_accessor :title, :headline, :published_on, :body, :author_name, :author_bio

  def initialize(title, headline, published_on, body, author_name, author_bio)
    @title = title
    @headline = headline
    @published_on = published_on
    @body = body
    @author_name = author_name
    @author_bio = author_bio
  end 

  # def display 
  #  puts "tittle: #{@title}"
  #  puts "headline: #{@headline}"
  #  puts "published_on: #{@published_on}"
  #  puts "body: #{@body}"
  #  puts "author_name: #{@author_name}"
  #  puts "author_bio: #{@author_bio}"
  # end
end
