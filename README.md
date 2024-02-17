# OpenPLC Runtime version 3 containerized using Red Hat Universal Base Image

This is fork of [OpenPLC Runtime version 3 repository](https://github.com/thiagoralves/OpenPLC_v3)

[![Build Status](https://travis-ci.org/thiagoralves/OpenPLC_v3.svg?branch=master)](https://travis-ci.org/thiagoralves/OpenPLC_v3)
[![Build status](https://ci.appveyor.com/api/projects/status/ut3466ixwtyf68qg?svg=true)](https://ci.appveyor.com/project/shrmrf/openplc-v3)

OpenPLC is an open-source [Programmable Logic Controller](https://en.wikipedia.org/wiki/Programmable_logic_controller) that is based on easy to use software. Our focus is to provide a low cost industrial solution for automation and research. OpenPLC has been used in [many research papers](https://scholar.google.com/scholar?as_ylo=2014&q=openplc&hl=en&as_sdt=0,1) as a framework for industrial cyber security research, given that it is the only controller to provide the entire source code.
The OpenPLC Project consists of two sub-projects:
1. [Runtime](https://github.com/thiagoralves/OpenPLC_v3)
2. [Programming editor](https://openplcproject.com/docs/installing-openplc-editor/)

## Building, Installing and Running inside Podman

### Build using UBI

```
export username=<YOUR_RH_PORTAL_USERNAME>
export password=<YOUR_RH_PORTAL_PASSWORD>
podman build -t openplc:v3 --build-arg username=$username --build-arg password=$password -f Dockerfile.ubi
```

### RUN

```
podman run -d -p 8080:8080 --privileged openplc:v3
```

You can access OpenPLC console via a web browser.
Default username and password is `openplc`.

### EtherCAT capability
To build with EtherCAT capability try `./install.sh linux ethercat` for more information see `utils/ethercat_src`