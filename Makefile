IMG_TAG := wpaas
IMG_REPO := wondrous-bullfrog

tf_fmt:
	terraform fmt ./terraform/**/*
	cd ./terraform && terraform init
	cd ./terraform && terraform validate

img_build:
	docker build --progress=plain -t ${IMG_TAG} -f docker/Dockerfile .

img_push: img_build
	# https://docs.digitalocean.com/products/container-registry/quickstart/#push-to-your-registry

	docker tag ${IMG_TAG} registry.digitalocean.com/${IMG_REPO}/${IMG_TAG}
	docker push registry.digitalocean.com/${IMG_REPO}/${IMG_TAG}
