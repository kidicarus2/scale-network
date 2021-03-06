
<p align="center"><img src="http://sarcasticadmin.com/scale/imgs/tux-scale-tech-2018.png" width="360"></p>
<p align="center">
  <a href="https://circleci.com/gh/socallinuxexpo/scale-network/tree/master"><img src="https://circleci.com/gh/socallinuxexpo/scale-network/tree/master.svg?style=svg" alt="Build Status"></img></a>
</p>

# scale-network

[SCaLE's](https://www.socallinuxexpo.org/) on-site expo network configurations, tooling and scripts 

## Table of Contents
* [CONTRIBUTING](./CONTRIBUTING.md)
* [MAPS](./MAPS.md)
* [SWITCH CONFIG](./switch-configuration/README.md)
* [ANSIBLE](./ansible/README.md)
* [OPENWRT](./openwrt/README.md)
* [TESTING](./tests/README.md)

## Requirements
To use this git repo you will need the following pkgs:
  - git >= 1.8.2
  - git-lfs
  - gomplate >= 3.2.0

### Installation
#### Gomplate
Installation of `gomplate` is a little bit tricky since it doesnt come in a `.deb`:
```bash
sudo -i
cd /usr/local/bin/
curl -O https://github.com/hairyhenderson/gomplate/releases/download/<version>/gomplate_linux-amd64 -L
mv gomplate_linux-amd64 gomplate
```
 
## Contributing
SCaLE happens once a year but the team has ongoing projects and prep year round.
If you are interesting in volunteering please request to join our mailing list:
https://lists.linuxfests.org/cgi-bin/mailman/listinfo/tech
