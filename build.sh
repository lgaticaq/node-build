docker build -t node-build:7.2.0 7.2.0
docker tag node-build:7.2.0 lgatica/node-build
docker tag node-build:7.2.0 lgatica/node-build:7.2.0
docker tag node-build:7.2.0 lgatica/node-build:7.2
docker tag node-build:7.2.0 lgatica/node-build:7
docker tag node-build:7.2.0 lgatica/node-build:latest
docker build -t node-build:6.9.1 6.9.1
docker tag node-build:6.9.1 lgatica/node-build:6.9.1
docker tag node-build:6.9.1 lgatica/node-build:6.9
docker tag node-build:6.9.1 lgatica/node-build:6
docker build -t node-build:4.6.2 4.6.2
docker tag node-build:4.6.2 lgatica/node-build:4.6.2
docker tag node-build:4.6.2 lgatica/node-build:4.6
docker tag node-build:4.6.2 lgatica/node-build:4
docker build -t node-build:7.2.0-onbuild 7.2.0/onbuild
docker tag node-build:7.2.0-onbuild lgatica/node-build:7.2.0-onbuild
docker tag node-build:7.2.0-onbuild lgatica/node-build:7.2-onbuild
docker tag node-build:7.2.0-onbuild lgatica/node-build:7-onbuild
docker tag node-build:7.2.0-onbuild lgatica/node-build:onbuild
docker build -t node-build:6.9.1-onbuild 6.9.1/onbuild
docker tag node-build:6.9.1-onbuild lgatica/node-build:6.9.1-onbuild
docker tag node-build:6.9.1-onbuild lgatica/node-build:6.9-onbuild
docker tag node-build:6.9.1-onbuild lgatica/node-build:6-onbuild
docker build -t node-build:4.6.2-onbuild 4.6.2/onbuild
docker tag node-build:4.6.2-onbuild lgatica/node-build:4.6.2-onbuild
docker tag node-build:4.6.2-onbuild lgatica/node-build:4.6-onbuild
docker tag node-build:4.6.2-onbuild lgatica/node-build:4-onbuild
docker push lgatica/node-build
