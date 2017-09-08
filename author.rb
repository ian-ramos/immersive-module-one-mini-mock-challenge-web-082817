class Author

  attr_accessor :name

  ALL = []

  def self.all
    ALL
  end

  def initialize (name)
    @name = name
    ALL << self
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book (title, word_count)
    Book.new(title, self, word_count)
  end

  def total_words
    total_word_count = 0
    self.books.each do |book|
      total_word_count += book.word_count
    end
    total_word_count
  end

  def self.most_words
    most_words = 0
    most_author = nil
    self.all.each do |author|
      if author.total_words > most_words
        most_words = author.total_words
        most_author = author
      end
    end
    most_author
  end


end
