##  Sorted table

Windows 64bit tests

| Language                | time   |
| --                      | --     |
| Clojure (native + repl) | 238 ms |
| Jython (native call)    | 263 ms |
| NASM                    | 328 ms |
| Clojure (native call)   | 336 ms |
| Java                    | 340 ms |
| Jena (native call)      | 350 ms |
| Rust                    | 354 ms |
| C with -O3              | 473 ms |
| Go                      | 475 ms |
| pypy                    | 540 ms |
| C                       | 779 ms |
| C#                      | 2 sec  |
| Clojure                 | 6 sec  |
| Jena                    | 11 sec |
| Jython                  | 18 sec |
| CPython                 | 24 sec |

Linux 64bit tests

| Language                  | time     |
| --                        | --       |
| Rust (| instead of +)     | 119 ms   |
| Go                        | 237 ms   |
| C with -O3 (GNU compiler) | 237 ms   |
| NASM                      | 238 ms   |
| Java                      | 240 ms   |
| Clojure (native call)     | 241 ms   |
| pypy                      | 474 ms   |
| Common Lisp (SBCL)        | 1.1 sec  |
| Clojure                   | 5.5 sec  |
| CPython                   | 7.6 sec  |
| Jena                      | 9.2 sec  |
| Ruby                      | 12.7 sec |
