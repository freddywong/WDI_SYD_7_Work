require 'pry'


class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    self.name = name
    self.age = age
    self.gender = gender
    self.apartment = apartment

  end


  def to_s
    puts "Person"
  end
end

def create_application_list
  applicants = []
  app_num = 0
  print "How many applicants are there? "
  app_num = gets.strip.to_i
  if app_num == 0
    create_application_list
  elsif app_num > 4
    print "I am sorry the max number of people that can occupy our apartments is 4 " # maybe get max occup of available apartments
    print "\nWould you like to make another application for less tenants? (Y)es or (N)o"
    re_apply = gets.chomp.to_s.upcase[0]
    if re_apply == "Y"
      create_application_list
    else
      print "Thank you for your interest"
      return
    end
  else
    app_counter = 0
    until app_counter ==  app_num
      app_counter += 1
      print "Please provide details of application number #{app_counter}\n"
      print "Name: "
      name = gets.strip.to_s.capitalize
      print "Age: "
      age = gets.strip.to_i
      if age == 0
        print "Age: "
        age = gets.strip.to_i
      elsif age < 25
        print "I am sorry our minimum age for appications is 25"
        print "Would you like to start a new applicaton?"
        if gets.chomp.to_s.upcase[0] == "Y"
          create_application_list
        else
          print "Thank you for your interest"
          return
        end
      end
      print "Gender M or F: "
      gender = gets.strip.to_s.upcase[0]
      apartment = "none"
      applicants  << Person.new(name, age, gender, apartment) 
    end
    return applicants
  end
end 

