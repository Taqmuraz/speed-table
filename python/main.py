import time

start = time.time()
i = sum(range(0, 1000000000))
t = time.time() - start
print(f"{t} sec, sum = {i}")