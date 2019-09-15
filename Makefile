DOCKER_CMD   = docker run --rm
IMAGE        = matsubara0507/dockwright:1.1.0
BUILD_CMD    = dockwright .dockwright.yaml

tags:
	${DOCKER_CMD} -v `pwd`/${dir}:/work ${IMAGE} ${BUILD_CMD} --tags --with-name

new-tags:
	${DOCKER_CMD} -v `pwd`/${dir}:/work ${IMAGE} ${BUILD_CMD} --new-tags --with-name

dockerfile:
	${DOCKER_CMD} -v `pwd`/${dir}:/work ${IMAGE} ${BUILD_CMD}

image:
	docker build -t ${tag} ${dir}

push: image
	docker push ${tag}
