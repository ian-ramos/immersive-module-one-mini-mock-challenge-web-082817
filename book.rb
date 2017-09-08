class Book

  attr_accessor :title, :author, :word_count

  ALL = []

  def self.all
    ALL
  end

  def initialize (title, author, word_count)
    @title = title
    @author = author
    @word_count = word_count
    ALL << self
  end

end
