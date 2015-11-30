# Given FixNum find the longest
# gap (distance between two 1s) in its binary
# representation and return length or 0 if no gap

def gap(num)
  num = num.to_s(2)[0..num.to_s(2).rindex('1')]
  num.split('1').reject{|v| v.empty?}.max_by(&:length).to_s.length
end
