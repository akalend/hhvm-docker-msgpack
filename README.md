# hhvm-docker-msgpack

Create image for hhvm and msgpack (msgpack.org) module

	git clone https://github.com/akalend/hhvm-docker-msgpack.git
	cd hhvm-docker-msgpack
	docker build .

	docker run  -it   --name hhvm  <image-id>  /bin/bash


So, usefull docker commands

	docker stop hhvm
	docker start hhvm
	docker exec -it hhvm /bin/bash     // attach to container and execute commands into bash
	docker run  -it  -v /local/path:/mapping/path   --name hhvm  <image-id>  /bin/bash // mapping filesystem path
	

