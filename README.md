# node-build

[![dockeri.co](http://dockeri.co/image/lgatica/node-build)](https://hub.docker.com/r/lgatica/node-build/)

[![Build Status](https://travis-ci.org/lgaticaq/node-build.svg?branch=master)](https://travis-ci.org/lgaticaq/node-build)

> Docker Image for node apps with alpine linux and native dependencies

Supported tags and respective Dockerfile links

- 9.0.0, 9.0, 9, latest ([9.0/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.0.0/Dockerfile))
- 9.0.0-onbuild, 9.0-onbuild, 9-onbuild, onbuild ([9.0/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.0.0/onbuild/Dockerfile))
- 8.9.1, 8.9, 8 ([8.9/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.9.1/Dockerfile))
- 8.9.1-onbuild, 8.9-onbuild, 8-onbuild ([8.9/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.9.1/onbuild/Dockerfile))
- 6.12.0, 6.12, 6 ([6.12/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.12.0/Dockerfile))
- 6.12.0-onbuild, 6.12-onbuild, 6-onbuild ([6.12/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.12.0/onbuild/Dockerfile))
- 4.8.6, 4.8, 4 ([4.8/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.8.6/Dockerfile))
- 4.8.6-onbuild, 4.8-onbuild, 4-onbuild ([4.8/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.8.6/onbuild/Dockerfile))

## Create a Dockerfile in your Node.js app project
```dockerfile
FROM node:9-onbuild
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
