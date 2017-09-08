require 'pry'
require_relative './book'
require_relative './author'


metz = Author.new("Sandi Metz")
ian = Author.new("Ian Ramos")

poodr = metz.write_book("Poodr", 100)
bottles = metz.write_book("99 Bottles of OOP", 99)
papers = ian.write_book("Research Papers", 241)

binding.pry

'bye'
