require "pry"
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails
  attr_reader :parsed_emails

  def initialize(string)
    @emails = string
    # @parsed_emails = []
  end

  # def parse
  # #   @emails.gsub!(",", "").split(' ').each do |email|
  # #     binding.pry
  # #     @parsed_emails << email if email.empty? == false
  # #   end
  # #   # binding.pry
  # #   @parsed_emails.uniq
  # end

  def parse
    emails.split.map do |email|
      email.include?(',') ? email.gsub(",","") : email
      
    end.uniq
  end

end
