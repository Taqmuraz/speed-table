(defn test [] (time
    (loop [acc 0 x 1]
      (if (< x 1000000000)
        (recur (unchecked-add acc x) (unchecked-inc x))
        acc))))
