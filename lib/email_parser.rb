# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
    
    attr_reader :emails
    
    def initialize(str)
        @emails = str.split(/[\s|\,\s|\,]/).reject {|el| el.empty?}.uniq
    end

    def parse
        @emails
    end

end