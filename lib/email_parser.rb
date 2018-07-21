# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
    attr_accessor :email_csv

    def initialize(email_csv)
        @email_csv = email_csv
    end

    def parse
        self.email_csv.split(',').map{|email| email.split(' ')}.flatten.uniq
    end
end
