# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email

  @@all = []

  def initialize(email)
    @email = email
  end

  def parse

    array = @email.delete(",").split(" ")
    array.uniq

    # if @email.include?(", ")
    #   emails = email.split(", ")
    # elsif @email.include?(" ")
    #   emails = email.split(" ")
    # end
  end

    # emails = []
    #
    # @email.each do |email_string|
    #   if email_string.include?(", ")
    #     @email.split(", ")
    #   elsif email_string.include?(" ")
    #     @email.split(" ")
    #   end
    # end
end
