# PatternMatching-1
a = [1, 2, 3] # will match
a = 4 # will match
4 = a # will match
[a, b] = [1, 2, 3] # won't match
a = [[1, 2, 3]] # will match
[[a]] = [[1, 2, 3]] # won't match

# PatternMatching-2
[a, b, a] = [1, 2, 3] # won't match
[a, b, a] = [1, 1, 2] # won't match
[a, b, a] = [1, 2, 1] # will match

# PatternMatching-3
a = 2
[a, b, a] = [1, 2, 3] # won't match
[a, b, a] = [1, 1, 2] # won't match
a = 1 # will match
a = 2
^a = 2 # will match
^a = 1 # won't match
^a = 2 - a # won't match

