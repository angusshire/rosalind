# hamming distance
File.open('data/rosalind_hamm.txt', 'r') do |f|
  lines = f.readlines
  lines.collect! { |line| line.gsub(/\n/, '') }
  puts lines[0].chars.zip(lines[1].chars).count { |bp| bp[0] != bp[1] }
end
