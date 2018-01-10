Simple Docker image for `junit-viewer`, so one can run it without needing a working nodejs/npm and whatnot.

## Usage

```
docker run --rm -v /path/to/results/dir:/results maxmiorim/junit-viewer > results.html
```
