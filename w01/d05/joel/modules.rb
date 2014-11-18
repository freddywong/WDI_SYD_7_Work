# Team A
module TeamA   #or Database
  class MyClass
  end
end

# Team B        #or BlogPost
module TeamB
  class MyClass
  end

  class ClassTen
  end
end


TeamA::MyClass.new
TeamB::MyClass.new

# _______________________________________

# Team A
module Database
  class User
    def find_in_database
    end
  end
end

# Team B        #or BlogPost
module TeamB
  class MyClass
  end

  class ClassTen
  end
end


TeamA::MyClass.new
TeamB::MyClass.new