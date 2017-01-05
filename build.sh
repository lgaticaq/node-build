docker build -t node-build:7.4.0 7.4.0
docker tag node-build:7.4.0 lgatica/node-build
docker tag node-build:7.4.0 lgatica/node-build:7.4.0
docker tag node-build:7.4.0 lgatica/node-build:7.4
docker tag node-build:7.4.0 lgatica/node-build:7
docker tag node-build:7.4.0 lgatica/node-build:latest
docker build -t node-build:6.9.3 6.9.3
docker tag node-build:6.9.3 lgatica/node-build:6.9.3
docker tag node-build:6.9.3 lgatica/node-build:6.9
docker tag node-build:6.9.3 lgatica/node-build:6
docker build -t node-build:4.7.1 4.7.1
docker tag node-build:4.7.1 lgatica/node-build:4.7.1
docker tag node-build:4.7.1 lgatica/node-build:4.7
docker tag node-build:4.7.1 lgatica/node-build:4
docker build -t node-build:7.4.0-onbuild 7.4.0/onbuild
docker tag node-build:7.4.0-onbuild lgatica/node-build:7.4.0-onbuild
docker tag node-build:7.4.0-onbuild lgatica/node-build:7.4-onbuild
docker tag node-build:7.4.0-onbuild lgatica/node-build:7-onbuild
docker tag node-build:7.4.0-onbuild lgatica/node-build:onbuild
docker build -t node-build:6.9.3-onbuild 6.9.3/onbuild
docker tag node-build:6.9.3-onbuild lgatica/node-build:6.9.3-onbuild
docker tag node-build:6.9.3-onbuild lgatica/node-build:6.9-onbuild
docker tag node-build:6.9.3-onbuild lgatica/node-build:6-onbuild
docker build -t node-build:4.7.1-onbuild 4.7.1/onbuild
docker tag node-build:4.7.1-onbuild lgatica/node-build:4.7.1-onbuild
docker tag node-build:4.7.1-onbuild lgatica/node-build:4.7-onbuild
docker tag node-build:4.7.1-onbuild lgatica/node-build:4-onbuild
docker push lgatica/node-build
