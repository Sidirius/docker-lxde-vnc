#sidirius/docker-lxde-vnc

Manual Build:
--
    git clone https://github.com/Sidirius/docker-lxde-vnc.git
    cd docker-lxde-vnc
    ./build.sh

Run:
--
    docker run -it --name lxde_vnc -p 5900:5900 -e passwd="*your_password_for_vnc*" sidirius/docker-lxde-vnc
    
Leave docker via `CTRL+P & CTRL+Q`
