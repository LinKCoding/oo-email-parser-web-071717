require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :parse

  def initialize(emails)
    @emails = emails.split(/[, ]/)
  end

  def parse
    @parsed = @emails.select {|x| x[(-4..-1)] == ".com"}.uniq
  end

end
