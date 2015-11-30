# Years to population
# p0: starting population
# percent: rate of growth
# aug: growth independent of percent
# p: end population
def nb_year(p0, percent, aug, p)
  n = 0;
  (p0 += (p0 * percent.fdiv(100) + aug).round(0); n +=1;) until p0 >= p
  n
end

puts nb_year(1500, 5, 100, 5000) == 15
puts nb_year(1500000, 2.5, 10000, 2000000) == 10
puts nb_year(1500000, 0.25, 1000, 2000000) == 94