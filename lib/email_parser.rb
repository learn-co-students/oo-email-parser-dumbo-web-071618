# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :str_emails

  def initialize(str_emails)
    @str_emails = str_emails
  end

  def parse
    parsed_emails = @str_emails.split(" ")
    parsed_emails.map do |email|
      if email.end_with?(",")
        email.chop!
      end
    end
    return parsed_emails.uniq
  end

end

=begin
emails = "john@doe.com, person@somewhere.org"
parser = EmailParser.new(emails)

parser.parse
# => ["john@doe.com", "person@somewhere.org"]
=end
