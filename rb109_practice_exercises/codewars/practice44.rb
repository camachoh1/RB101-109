# def nexus (users)
#   pairs = users.to_a
#   pairs.min_by {|subarr| p [subarr[0],subarr.inject(:-).abs]}[0]
# end

def nexus(users)
  pairs = users.min_by {|k, v| p [(k - v).abs, k ]}
  nexus = pairs[0]
end

users = {1 => 3, 3 => 3, 5 => 1}
p nexus(users) == 3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
p nexus(users) == 3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 4}
p nexus(users) == 3