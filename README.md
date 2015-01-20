Manual Build:
--------------

	git clone https://github.com/Sidirius/docker-lxde-vnc.git
	cd docker-lxde-vnc
	./build.sh

Run:
--------------

	docker run -it --name lxde_vnc -p 5900:5900 sidirius/docker-lxde-vnc

Inside docker run 
	x11vnc -storepasswd
to create VNC Password Save password and leave docker via 
	CTRL+P & CTRL+Q

Restart container via: 
	docker restart lxde_vnc
