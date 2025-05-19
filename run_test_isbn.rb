# frozen_string_literal: true

require 'isbn_field'

def validate_isbns(isbn_list)
  isbn_list.each do |isbn|
    valid = IsbnField.validate(isbn)
    puts "#{isbn} is #{valid ? 'valid' : 'invalid'}"
  end
end

def main
  isbn_10_list = []
  isbn_13_list = []

  # Example ISBNs:
  isbn_10_list << "0321765722"
  isbn_10_list << "1387741527"
  isbn_10_list << "1721654909"
  isbn_10_list << "0321765722"
  isbn_13_list << "978-0321765723"
  isbn_13_list << "978-1721654901"
  isbn_13_list << "978-1387741526"
  isbn_13_list << "979-8873218714"

  puts "ISBN-10 List: #{isbn_10_list}"
  puts "ISBN-13 List: #{isbn_13_list}"

  puts "\nValidating ISBN-10:"
  validate_isbns(isbn_10_list)

  puts "\nValidating ISBN-13:"
  validate_isbns(isbn_13_list)
end

main if __FILE__ == $PROGRAM_NAME