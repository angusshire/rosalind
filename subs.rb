inp_arr = Array.new
File.open("data/rosalind_subs.txt", "r") do |f|
  inp_arr = f.readlines
end

inp_arr.map!(&:strip)

answer = "" 
offset = 0
until (tmp = inp_arr[0].index(inp_arr[1], offset)).nil?
  offset = tmp + 1
  answer = "#{answer} #{offset}"
end

answer.strip!
puts answer
