# node-build

[![dockeri.co](http://dockeri.co/image/lgatica/node-build)](https://hub.docker.com/r/lgatica/node-build/)

[![Build Status](https://travis-ci.org/lgaticaq/node-build.svg?branch=master)](https://travis-ci.org/lgaticaq/node-build)

> Docker Image for node apps with alpine linux and native dependencies

Supported tags and respective Dockerfile links

* 10.6.0, 10.6, 10, latest ([10.6/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/10.6.0/Dockerfile))
* 10.6.0-onbuild, 10.6-onbuild, 10-onbuild, onbuild ([10.6/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/10.6.0/onbuild/Dockerfile))
* 10.6.0-ssh-onbuild, 10.6-ssh-onbuild, 10-ssh-onbuild, ssh-onbuild ([10.6/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/10.6.0/ssh-onbuild/Dockerfile))
* 10.6.0-custom-registry-onbuild, 10.6-custom-registry-onbuild, 10-custom-registry-onbuild, custom-registry-onbuild ([10.6/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/10.6.0/custom-registry-onbuild/Dockerfile))
* 9.11.2, 9.11, 9 ([9.11/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.2/Dockerfile))
* 9.11.2-onbuild, 9.11-onbuild, 9-onbuild ([9.11/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.2/onbuild/Dockerfile))
* 9.11.2-ssh-onbuild, 9.11-ssh-onbuild, 9-ssh-onbuild ([9.11/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.2/ssh-onbuild/Dockerfile))
* 9.11.2-custom-registry-onbuild, 9.11-custom-registry-onbuild, 9-custom-registry-onbuild ([9.11/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/9.11.2/custom-registry-onbuild/Dockerfile))
* 8.11.3, 8.11, 8 ([8.11/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.3/Dockerfile))
* 8.11.3-onbuild, 8.11-onbuild, 8-onbuild ([8.11/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.3/onbuild/Dockerfile))
* 8.11.3-ssh-onbuild, 8.11-ssh-onbuild, 8-ssh-onbuild ([8.11/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.3/ssh-onbuild/Dockerfile))
* 8.11.3-custom-registry-onbuild, 8.11-custom-registry-onbuild, 8-custom-registry-onbuild ([8.11/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/8.11.3/custom-registry-onbuild/Dockerfile))
* 6.14.3, 6.14, 6 ([6.14/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.3/Dockerfile))
* 6.14.3-onbuild, 6.14-onbuild, 6-onbuild ([6.14/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.3/onbuild/Dockerfile))
* 6.14.3-ssh-onbuild, 6.14-ssh-onbuild, 6-ssh-onbuild ([6.14/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.3/ssh-onbuild/Dockerfile))
* 6.14.3-custom-registry-onbuild, 6.14-custom-registry-onbuild, 6-custom-registry-onbuild ([6.14/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/6.14.3/custom-registry-onbuild/Dockerfile))
* 4.9.1, 4.9, 4 ([4.9/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/Dockerfile))
* 4.9.1-onbuild, 4.9-onbuild, 4-onbuild ([4.9/onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/onbuild/Dockerfile))
* 4.9.1-ssh-onbuild, 4.9-ssh-onbuild, 4-ssh-onbuild ([4.9/ssh-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/ssh-onbuild/Dockerfile))
* 4.9.1-custom-registry-onbuild, 4.9-custom-registry-onbuild, 4-custom-registry-onbuild ([4.9/custom-registry-onbuild/Dockerfile](https://github.com/lgaticaq/node-build/blob/master/4.9.1/custom-registry-onbuild/Dockerfile))

## Variants

* onbuild: Onbuild image to general node app
* ssh-onbuild: Onbuild image to node app with private dependencies (git+ssh)
* custom-registry-onbuild: Onbuild image to node app with custom registry (verdaccio)

## Create a Dockerfile in your Node.js app project

```dockerfile
FROM lgatica/node-build:10-onbuild
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
