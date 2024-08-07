package main

import (
	"fmt"
	"strconv"
	"time"
	"os"
)

func ms() int64 {
	return time.Now().UnixMilli()
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	start := ms()
	sum := 0
    for i := 0; i < n; i++ {
        sum += i
    }
	end := ms()

    fmt.Println("sum = ", sum, ", time = ", end - start, " ms")
}
