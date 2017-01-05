# node-build

[![Image Layers](https://images.microbadger.com/badges/image/lgatica/node-build.svg)](http://microbadger.com/images/lgatica/node-build)
[![Docker Stars](https://img.shields.io/docker/stars/lgatica/node-build.svg)](https://hub.docker.com/r/lgatica/node-build/)
[![Docker Pulls](https://img.shields.io/docker/pulls/lgatica/node-build.svg)](https://hub.docker.com/r/lgatica/node-build/)

> Docker Image for node apps with alpine linux and native dependencies

Supported tags and respective Dockerfile links

- 7.4.0, 7.4, 7, latest ([7.4/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/7.4.0/Dockerfile))
- 7.4.0-onbuild, 7.4-onbuild, 7-onbuild, onbuild ([7.4/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/7.4.0/onbuild/Dockerfile))
- 6.9.3, 6.9, 6 ([6.9/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.9.3/Dockerfile))
- 6.9.3-onbuild, 6.9-onbuild, 6-onbuild ([6.9/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.9.3/onbuild/Dockerfile))
- 4.7.0, 4.7, 4 ([4.7/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.7.0/Dockerfile))
- 4.7.0-onbuild, 4.7-onbuild, 6-onbuild ([4.7/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.7.0/onbuild/Dockerfile))

## Create a Dockerfile in your Node.js app project
```dockerfile
FROM node:7-onbuild
# replace this with your application's default port
EXPOSE 3000
```

You can then build and run the Docker image:

```bash
docker build -t my-nodejs-app .
docker run -it --rm --name my-running-app my-nodejs-app
```

### Notes
The image assumes that your application has a file named package.json listing its dependencies and defining its start script.
