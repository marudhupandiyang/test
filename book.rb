
module Test


load 'final_sale.rb'


class Book
  attr_accessor :id, :price, :name

  def initialize()
    @price = 1
    @name ="Ruby on Rails"

  end

  def calsalprice

  puts "Final Sale Price: " + FinalPrice::getprice(@price).to_s

  end

  def getPrice

    puts "Enter Book price: "
      @price = Integer(gets.chomp)
      raise "Price cannot be zero"  if @price == 0

      rescue => e
        puts e.message
        getPrice


  end
end


class Edition < Book
  attr_accessor :edition_number

end


def self.get_books

    edition = Array.new
    i=0
    while true
      edition[i] = Edition.new

      puts "Enter Book id: "
      edition[i].id = gets.chomp

      edition[i].getPrice

      puts "Enter Book Name: "
      edition[i].name = gets.chomp

      puts "Enter Book edition: "
      edition[i].edition_number = gets.chomp

      puts "Do you need to continue adding books(y/n)?"

      break if (gets.chomp) !="y"
      i +=1
    end

      puts "All Book entered"
    puts edition.inspect

end




def self.search_book(name,book)
  book.size.times do |i|
    if book[i].name == name
      return book[i]
    end
  end
end



# -------------------------

book  = Array.new


book.push( Book.new)
book.push(Book.new)

book[0].id= 1
book[1].id= 2

  puts 'Enter Price of ' + book.size.to_s + '  Books(Only Integers and No Zero accepted)'

book.size.times do |i|
begin
    book[i].getPrice
  rescue => e
    puts e.message
    book[i].getPrice
  end
end

puts ""
puts "Inspecting book"

book.size.times do |i|
  puts ""
 puts "Book " + i.to_s  + book[i].inspect
end




book.size.times do |i|
  puts ""
  puts "Calculating Final Sale Price for Book " + i.to_s
  book[i].calsalprice

end

puts "Seariching book with name"

 puts "Found: "  + (search_book "Ruby on Rails",book).inspect

puts ""
puts "Getting Edition"

get_books


puts 'Built my own gem . It has a class and function called as owner'



  require 'My_Gem'

  MyGem.owner

  puts "Filterd Value.." +  MyGem.filter([1,2,3]){
      |a|
    true if (a%2) == 0
  }.to_s


end

