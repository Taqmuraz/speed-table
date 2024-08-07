import time

start = time.time()
i = sum(xrange(0, 1000000000))
t = time.time() - start
print("%s sec, sum = %s" % (t, i))