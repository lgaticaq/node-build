# node-build

[![dockeri.co](http://dockeri.co/image/lgatica/node-build)](https://hub.docker.com/r/lgatica/node-build/)

[![Build Status](https://travis-ci.org/lgaticaq/node-build.svg?branch=master)](https://travis-ci.org/lgaticaq/node-build)

> Docker Image for node apps with alpine linux and native dependencies

Supported tags and respective Dockerfile links

- 7.6.0, 7.6, 7, latest ([7.6/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/7.6.0/Dockerfile))
- 7.6.0-onbuild, 7.6-onbuild, 7-onbuild, onbuild ([7.6/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/7.6.0/onbuild/Dockerfile))
- 6.10.0, 6.10, 6 ([6.10/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.10.0/Dockerfile))
- 6.10.0-onbuild, 6.10-onbuild, 6-onbuild ([6.10/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.10.0/onbuild/Dockerfile))
- 4.8.0, 4.8, 4 ([4.8/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.8.0/Dockerfile))
- 4.8.0-onbuild, 4.8-onbuild, 4-onbuild ([4.8/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.8.0/onbuild/Dockerfile))

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
