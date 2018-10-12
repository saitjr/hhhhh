require 'date'
require 'awesome_print'
require 'chunky_png'

def str_to_arr(str)
  abort("error letter") if str.match("[^a-zA-Z]")

  upstr = str.upcase
  image_paths = upstr.chars.map { |l| File.join(__dir__, "..", "resources", "letters", "#{l}.png") }

  arr = [[], [], [], [], [], [], []]

  image_paths.each do |img|
    abort("missing letter #{File.basename(img)}") unless File.exist?(img)
    img_data = ChunkyPNG::Image.from_file(img)
    img_arr = []
    (img_data.height / 10).times do |i|
      (img_data.width / 10).times do |j|
        arr[i + 1] << (img_data[j * 10, i * 10] == 0 ? 0 : 1)
      end
      arr[i + 1] << 0
    end
  end

  arr[0] = arr[1].map { 0 }
  arr[6] = arr[1].map { 0 }

  arr
end

def push(date)
  gitdate = date.strftime("%a %b %d %X %Y %z -0400")
  10.times do
    cmd = "echo '#{Time.now}' > 'tmp';
      git add .;
      export GIT_AUTHOR_DATE='#{gitdate}';
      export GIT_COMMITTER_DATE='#{gitdate}';
      git commit -m 'update';
      git push origin master"
    system cmd
    sleep(0.5)
  end
end

arr = str_to_arr(ARGV[1])
y, m, d = ARGV[0].split("-").map { |s| s.to_i }
start_date = Date.new(y, m, d)

arr.count.times do |i|
  p arr[i]
end

(arr.count * arr.first.count).times do |i|
  o = arr[i % arr.count][i / arr.count]
  if o == 1
    push_date = start_date + i
    puts push_date
    push(push_date)
  end
end
