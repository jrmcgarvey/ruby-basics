state_pops = { arizona: 4000, california: 10000, montana: 37 }
pops = state_pops.values
this_sum = pops.reduce(0) {|sum, state| sum + state }
puts this_sum

state_array = [{name: 'arizona', pop: 4000},{name: 'california', pop: 10000},{name: 'montana', pop: 37}]

new_sum = state_array.reduce(0) { |sum, state| sum + state[:pop] }
puts new_sum

new_states = state_array.select { |state| state[:pop] > 1000 }

puts new_states