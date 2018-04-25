# node-build

[![dockeri.co](http://dockeri.co/image/lgatica/node-build)](https://hub.docker.com/r/lgatica/node-build/)

[![Build Status](https://travis-ci.org/lgaticaq/node-build.svg?branch=master)](https://travis-ci.org/lgaticaq/node-build)

> Docker Image for node apps with alpine linux and native dependencies

Supported tags and respective Dockerfile links

* 9.11.1, 9.11, 9, latest ([9.11/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.1/Dockerfile))
* 9.11.1-onbuild, 9.11-onbuild, 9-onbuild, onbuild ([9.11/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.1/onbuild/Dockerfile))
* 9.11.1-ssh-onbuild, 9.11-ssh-onbuild, 9-ssh-onbuild, ssh-onbuild ([9.11/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.1/ssh-onbuild/Dockerfile))
* 9.11.1-custom-registry-onbuild, 9.11-custom-registry-onbuild, 9-custom-registry-onbuild, custom-registry-onbuild ([9.11/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.1/custom-registry-onbuild/Dockerfile))
* 8.11.1, 8.11, 8 ([8.11/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.1/Dockerfile))
* 8.11.1-onbuild, 8.11-onbuild, 8-onbuild ([8.11/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.1/onbuild/Dockerfile))
* 8.11.1-ssh-onbuild, 8.11-ssh-onbuild, 8-ssh-onbuild ([8.11/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.1/ssh-onbuild/Dockerfile))
* 8.11.1-custom-registry-onbuild, 8.11-custom-registry-onbuild, 8-custom-registry-onbuild ([8.11/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.1/custom-registry-onbuild/Dockerfile))
* 6.14.1, 6.14, 6 ([6.14/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.1/Dockerfile))
* 6.14.1-onbuild, 6.14-onbuild, 6-onbuild ([6.14/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.1/onbuild/Dockerfile))
* 6.14.1-ssh-onbuild, 6.14-ssh-onbuild, 6-ssh-onbuild ([6.14/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.1/ssh-onbuild/Dockerfile))
* 6.14.1-custom-registry-onbuild, 6.14-custom-registry-onbuild, 6-custom-registry-onbuild ([6.14/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.1/custom-registry-onbuild/Dockerfile))
* 4.9.1, 4.9, 4 ([4.9/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/Dockerfile))
* 4.9.1-onbuild, 4.9-onbuild, 4-onbuild ([4.9/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/onbuild/Dockerfile))
* 4.9.1-ssh-onbuild, 4.9-ssh-onbuild, 4-ssh-onbuild ([4.9/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/ssh-onbuild/Dockerfile))
* 4.9.1-custom-registry-onbuild, 4.9-custom-registry-onbuild, 4-custom-registry-onbuild ([4.9/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/custom-registry-onbuild/Dockerfile))

## Variants

* onbuild: Onbuild image to general node app
* ssh-onbuild: Onbuild image to node app with private dependencies (git+ssh)

## Create a Dockerfile in your Node.js app project

```dockerfile
FROM lgatica/node-build:9-onbuild
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
