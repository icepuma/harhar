# harhar - work in progress

Parser and analyzer for https://w3c.github.io/web-performance/specs/HAR/Overview.html files.

> harhar stands for **h**ttp **ar**chive **h**elpful **a**nalyze**r**

## Local development

```shell
# json code generation + format + fix
./check.sh

# run harhar with a http archive for github.com
dart run harhar examples/github.com.har

# compile => yields binary in build/harhar
./build.sh
```
