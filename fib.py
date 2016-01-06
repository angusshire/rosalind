def rabbits(n, k):
  if (n == 1):
      return 1
  elif (n == 2):
      return 1
  else:
      return rabbits(n-1, k) + rabbits(n-2, k)*k

print rabbits(28, 4)
