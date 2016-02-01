input = ""
File.open('data/rosalind_prot.txt', 'r') do |f|
  f.each_line {|x| input = "#{input}#{x}" }
end



RNA_codon_table = "UUU F      CUU L      AUU I      GUU V
UUC F      CUC L      AUC I      GUC V
UUA L      CUA L      AUA I      GUA V
UUG L      CUG L      AUG M      GUG V
UCU S      CCU P      ACU T      GCU A
UCC S      CCC P      ACC T      GCC A
UCA S      CCA P      ACA T      GCA A
UCG S      CCG P      ACG T      GCG A
UAU Y      CAU H      AAU N      GAU D
UAC Y      CAC H      AAC N      GAC D
UAA Stop   CAA Q      AAA K      GAA E
UAG Stop   CAG Q      AAG K      GAG E
UGU C      CGU R      AGU S      GGU G
UGC C      CGC R      AGC S      GGC G
UGA Stop   CGA R      AGA R      GGA G
UGG W      CGG R      AGG R      GGG G"

hash = { } 
RNA_codon_table.scan(/([[:alpha:]]{3})\s([[:alpha:]]+)/).each do |arr|
  hash[arr[0]] = arr[1]
end

answer = ""
input.chars.each_slice(3) do |arr|
  s = arr.join
  if hash[s] != "Stop"
    answer = "#{answer}#{hash[arr.join]}"
  end
end
puts answer
