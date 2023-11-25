# harhar - work in progress

Parser and analyzer for https://w3c.github.io/web-performance/specs/HAR/Overview.html files.

> harhar stands for **h**ttp **ar**chive **h**elpful **a**nalyze**r**

## Badges

![dart](https://github.com/icepuma/harhar/actions/workflows/dart.yaml/badge.svg)

## Local development

```shell
# json code generation + format + fix
./check.sh

# run harhar with a http archive for github.com
dart run harhar examples/github.com.har

# compile => yields binary in build/harhar
./build.sh
```

## Todos

- [ ] Argument parsing
- [ ] Multiple output options (beautiful, JSON)
- [ ] More analyzer tasks (e.g. top 10 slowest requests)
- [ ] GitHub releases
