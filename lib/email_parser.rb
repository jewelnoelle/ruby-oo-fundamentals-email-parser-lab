require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(string)
        @string = string
    end
    
    def parse
        if @string.include?(",")
            string_no_comma = @string.delete(",")
            split_string = string_no_comma.split(" ")
            binding.pry
            split_string.uniq
        else
            string_space = @string.split(" ")
            return string_space.uniq
        end
    end
end 