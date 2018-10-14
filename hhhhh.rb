require 'date'

module Letter
  A = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 1],
    [1, 1, 1],
    [1, 0, 1],
    [1, 0, 1],
    [0, 0, 0]
  ]

  B = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 1],
    [1, 1, 1],
    [1, 0, 1],
    [1, 1, 1],
    [0, 0, 0]
  ]

  C = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0],
    [1, 0, 0],
    [1, 1, 1],
    [0, 0, 0]
  ]

  D = [
    [0, 0, 0],
    [1, 1, 0],
    [1, 0, 1],
    [1, 0, 1],
    [1, 0, 1],
    [1, 1, 0],
    [0, 0, 0]
  ]

  E = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 1, 1],
    [0, 0, 0]
  ]

  F = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0],
    [0, 0, 0]
  ]

  G = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0],
    [1, 0, 1],
    [1, 1, 1],
    [0, 0, 0]
  ]

  H = [
    [0, 0, 0],
    [1, 0, 1],
    [1, 0, 1],
    [1, 1, 1],
    [1, 0, 1],
    [1, 0, 1],
    [0, 0, 0]
  ]

  I = [
    [0, 0, 0],
    [1, 1, 1],
    [0, 1, 0],
    [0, 1, 0],
    [0, 1, 0],
    [1, 1, 1],
    [0, 0, 0]
  ]

  J = [
    [0, 0, 0],
    [0, 0, 1],
    [0, 0, 1],
    [0, 0, 1],
    [1, 0, 1],
    [1, 1, 1],
    [0, 0, 0]
  ]

  K = [
    [0, 0, 0],
    [1, 0, 1],
    [1, 0, 1],
    [1, 1, 0],
    [1, 0, 1],
    [1, 0, 1],
    [0, 0, 0]
  ]

  L = [
    [0, 0, 0],
    [1, 0, 0],
    [1, 0, 0],
    [1, 0, 0],
    [1, 0, 0],
    [1, 1, 1],
    [0, 0, 0]
  ]

  M = [
    [0, 0, 0, 0, 0],
    [0, 1, 1, 1, 0],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [0, 0, 0, 0, 0]
  ]

  N = [
    [0, 0, 0, 0],
    [1, 0, 0, 1],
    [1, 1, 0, 1],
    [1, 1, 1, 1],
    [1, 0, 1, 1],
    [1, 0, 0, 1],
    [0, 0, 0, 0]
  ]

  O = [
    [0, 0, 0, 0],
    [0, 1, 1, 0],
    [1, 0, 0, 1],
    [1, 0, 0, 1],
    [1, 0, 0, 1],
    [0, 1, 1, 0],
    [0, 0, 0, 0]
  ]

  P = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 1],
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0],
    [0, 0, 0]
  ]

  Q = [
    [0, 0, 0, 0],
    [0, 1, 1, 0],
    [1, 0, 0, 1],
    [1, 0, 0, 1],
    [1, 1, 1, 1],
    [0, 0, 1, 0],
    [0, 0, 0, 0]
  ]

  R = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 1],
    [1, 1, 1],
    [1, 1, 0],
    [1, 0, 1],
    [0, 0, 0]
  ]

  S = [
    [0, 0, 0],
    [1, 1, 1],
    [1, 0, 0],
    [1, 1, 1],
    [0, 0, 1],
    [1, 1, 1],
    [0, 0, 0]
  ]

  T = [
    [0, 0, 0],
    [1, 1, 1],
    [0, 1, 0],
    [0, 1, 0],
    [0, 1, 0],
    [0, 1, 0],
    [0, 0, 0]
  ]

  U = [
    [0, 0, 0],
    [1, 0, 1],
    [1, 0, 1],
    [1, 0, 1],
    [1, 0, 1],
    [1, 1, 1],
    [0, 0, 0]
  ]

  V = [
    [0, 0, 0],
    [1, 0, 1],
    [1, 0, 1],
    [1, 0, 1],
    [1, 0, 1],
    [0, 1, 0],
    [0, 0, 0]
  ]

  W = [
    [0, 0, 0, 0, 0],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [0, 1, 1, 1, 0],
    [0, 0, 0, 0, 0]
  ]

  X = [
    [0, 0, 0],
    [1, 0, 1],
    [1, 1, 1],
    [0, 1, 0],
    [1, 1, 1],
    [1, 0, 1],
    [0, 0, 0]
  ]

  Y = [
    [0, 0, 0],
    [1, 0, 1],
    [1, 0, 1],
    [1, 1, 1],
    [0, 1, 0],
    [0, 1, 0],
    [0, 0, 0]
  ]

  Z = [
    [0, 0, 0],
    [1, 1, 1],
    [0, 0, 1],
    [0, 1, 0],
    [1, 0, 0],
    [1, 1, 1],
    [0, 0, 0]
  ]
end

def push(date)
  gitdate = date.strftime("%a %b %d %X %Y %z -0400")
  20.times do
    cmd = "echo '#{Time.now}' > 'tmp';
      git add .;
      export GIT_AUTHOR_DATE='#{gitdate}';
      export GIT_COMMITTER_DATE='#{gitdate}';
      git commit -m 'update';
      git push"
    system cmd
    sleep(0.5)
  end
end

def s_to_a(str)
  arr = []
  letters = str.upcase.split("-")
  begin
    letters.each do |l|
      arr << Letter.const_get(l).map { |a| a << 0 } # read letter and append a space after 2d array
    end
    (arr.count - 1).times do |l_index|
      arr.first.count.times do |row_index|
        arr[0][row_index] += arr[l_index + 1][row_index]
      end
    end
    arr.first
  rescue => exception
    puts exception
    abort("missing letter")
  end
end

str = ARGV[0]
y, m, d = ARGV[1].split("-").map { |s| s.to_i }
date = Date.new(y, m, d)
abort("letter defination error") unless Letter.constants.select { |l| Letter.const_get(l).count != 7 }.empty?
abort("start date must be sunday") if date.nil? || date.wday != 0
arr = s_to_a(str)

puts "------------- the pic as below -------------"

arr.each do |a|
  p a
end

puts "exec git push action after 5s..."

sleep(5)

# (arr.count * arr.first.count).times do |i|
#   o = arr[i % arr.count][i / arr.count]
#   if o == 1
#     push_date = date + i
#     puts push_date
#     push(push_date)
#   end
# end

# system("git rm tmp")
# system("git commit -m 'rm'")
# system("git push")