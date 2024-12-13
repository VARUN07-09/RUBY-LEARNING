# Problem Statement 9: Library System Using Encapsulation, Inheritance, and Polymorphism
# Design a library system where:
# A Book class stores the book's title, author, and genre (encapsulated with appropriate accessors).
# An EBook class inherits from Book and adds a method download to simulate downloading an e-book.
# A PhysicalBook class also inherits from Book and adds a method checkout to simulate borrowing a physical book.
# Use polymorphism to create an array of mixed EBook and PhysicalBook objects and display the book details with different behaviors for e-books and physical books.

class Book
  attr_reader :title , :author ,:genre


  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = author
  end
end


class EBook < Book
  def downloading
    "Downloading the ebook of '#{title}' by #{author}"
  end

end


class PhysicalBook < Book
  def checkout
    "Checking out physical book of '#{title}' by #{author}"
  end

end


books = [EBook.new("EBook", "russ", "ruby"), PhysicalBook.new("Mathematics", "R.S.", "Non-Fiction")]
books.each do |book|
  if book.is_a?(EBook)
    puts book.downloading
  else
    puts book.checkout
  end
end