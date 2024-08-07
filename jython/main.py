import java.util.stream as stream
import time

start_time = time.time()

long_stream = stream.LongStream.range(0, 1000000000)
result = long_stream.sum()

end_time = time.time()

print("Sum result:", result)
print("Execution time:", end_time - start_time, "seconds")
