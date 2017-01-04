docker build -t node-build:7.3.0 7.3.0
docker tag node-build:7.3.0 lgatica/node-build
docker tag node-build:7.3.0 lgatica/node-build:7.3.0
docker tag node-build:7.3.0 lgatica/node-build:7.3
docker tag node-build:7.3.0 lgatica/node-build:7
docker tag node-build:7.3.0 lgatica/node-build:latest
docker build -t node-build:6.9.2 6.9.2
docker tag node-build:6.9.2 lgatica/node-build:6.9.2
docker tag node-build:6.9.2 lgatica/node-build:6.9
docker tag node-build:6.9.2 lgatica/node-build:6
docker build -t node-build:4.7.0 4.7.0
docker tag node-build:4.7.0 lgatica/node-build:4.7.0
docker tag node-build:4.7.0 lgatica/node-build:4.7
docker tag node-build:4.7.0 lgatica/node-build:4
docker build -t node-build:7.3.0-onbuild 7.3.0/onbuild
docker tag node-build:7.3.0-onbuild lgatica/node-build:7.3.0-onbuild
docker tag node-build:7.3.0-onbuild lgatica/node-build:7.3-onbuild
docker tag node-build:7.3.0-onbuild lgatica/node-build:7-onbuild
docker tag node-build:7.3.0-onbuild lgatica/node-build:onbuild
docker build -t node-build:6.9.2-onbuild 6.9.2/onbuild
docker tag node-build:6.9.2-onbuild lgatica/node-build:6.9.2-onbuild
docker tag node-build:6.9.2-onbuild lgatica/node-build:6.9-onbuild
docker tag node-build:6.9.2-onbuild lgatica/node-build:6-onbuild
docker build -t node-build:4.7.0-onbuild 4.7.0/onbuild
docker tag node-build:4.7.0-onbuild lgatica/node-build:4.7.0-onbuild
docker tag node-build:4.7.0-onbuild lgatica/node-build:4.7-onbuild
docker tag node-build:4.7.0-onbuild lgatica/node-build:4-onbuild
docker push lgatica/node-build
