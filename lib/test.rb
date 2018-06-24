# SAITJR

require 'date'

# require 'RMagick'
#
# require 'RMagick'
# include Magick

# A = File.join(__dir__, "..", "resources/letters/A.png")
#
# cat = ImageList.new(A)
# cat.display

start_date = Date.new(2018, 5, 27)
today = Time.now.to_date
# strftime("%Y-%m-%d")

current_week = ((today - start_date) / 7).to_i + 1  # 已经过去多少周

string = "saitjr".upcase

letter_column_counts = []
string.each_byte do |l|
  case l.chr
  when 'I'
    letter_column_counts << 1
  else
    letter_column_counts << 3
  end
end

total = 0
letter, index = letter_column_counts.each_with_index do |column, index|
                  if total > passed
                end

coordinates = []
