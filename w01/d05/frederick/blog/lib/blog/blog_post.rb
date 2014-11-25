require_relative "../database/table"
require_relative "../database/other_table"

module Blog
	class BlogPost
		def initialize
			Database::Table
		end

		def some_name
			Database::OtherTable.new.some_name
			puts "Hi, there!"

		end
	end
end