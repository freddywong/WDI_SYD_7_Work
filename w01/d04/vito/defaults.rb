#Defaults

class Printer
  def print(page, page_number = 1)
    puts "#{page_number}: #{page}"
  end
end

canon = Printer.new
canon.print("This is the content on page 1", 1)
canon.print("This is the content on page 2", 2)

