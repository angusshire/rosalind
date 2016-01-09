class Integer
  def factorial
    (1..self).reduce(&:*) || 1
  end
end

def comb(n, k)
  n.factorial / (n-k).factorial / k.factorial
end

def sol(k, m, n)
  total_couples = comb(k+m+n, 2)
  hetero_couples = comb(m, 2)
  recessive_couples = comb(n, 2)
  cross_couples = comb(m+n, 2) - hetero_couples - recessive_couples
  1 - (((cross_couples * 0.5) + (recessive_couples) + (hetero_couples * 0.25)) / total_couples)
end

File.open('data/rosalind_iprb.txt', 'r') do |f|
  arr = f.readlines[0].gsub("\n", '').split().collect(&:to_i)
  puts sol(arr[0], arr[1], arr[2]);
end
