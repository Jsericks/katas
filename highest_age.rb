# ORIGINAL ALGORITHM
# def highest_age(group1,group2)
#   max_age={'names'=>[],'age'=>-1}
#   total={}
#   for person in group1+group2
#     total[person['name']]=(total[person['name']] or 0)+total.person['age']
#     if total[person['name']]>max_age['age']
#       max_age['names']+=[person['name']]
#       max_age['age']=total[person['name']]
#     end
#   end
#   return total['names'].sort[0]
# end

def highest_age(group1, group2)
  group1.map{ |per| {per['name'] => per['age']}}.
    concat(group2.map{ |per| {per['name'] => per['age']}}).
      inject({}) { |aggr, per| aggr.merge(per) { |k,o,n| o + n} }.
        sort_by{ |k,v| k }.to_h.max_by{ |k,v| v}[0]
end


# Not My Solution -- More succinct and readable
# def highest_age(g1, g2)
#   hash = Hash.new(0)
#   [g1, g2].flatten.each { |x| hash[x['name']] += x['age'] }
#   hash.invert.max.last
# end