File.open('data/rosalind_gc.txt', 'r') do |f|
  d = f.read.gsub(/\n/, "").split(/>Rosalind_(\d{4})/).delete_if(&:empty?)
  ids = d.select { |s| s.length == 4 }
  gc = d.select { |s| s.length != 4 }
  pgc = gc.collect { |dna| dna.count('CG')/1.0/dna.length * 100.0 }
  r = pgc.each_with_index.max do |a, b|
    a[0] <=> b[0]
  end
  puts "Rosalind_#{ids[r[1]]}"
  puts r[0]
end

  

