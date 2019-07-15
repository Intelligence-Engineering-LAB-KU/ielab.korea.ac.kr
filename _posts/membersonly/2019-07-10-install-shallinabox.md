---
layout: single
title: "Shellinabox 설치 및 proxy"
categories: hacking
author: wschoi
private: true
---

Web으로 SSH를 사용하기 위한 Shellinabox를 설치하는 방법입니다.

## 참고하면 좋은 링크

- [How to install Shellinabox on Ubuntu](https://www.smarthomebeginner.com/install-shellinabox-on-ubuntu/)


## 1. Shellinabox 설치 및 실행해보기

```
sudo apt-get install shellinabox
sudo service shellinabox start
sudo service shellinabox stop
sudo service shellinabox reload
```
	
## 2. Shellinabox 설정하기

```
sudo vi /etc/default/shellinabox
```

아래와 같이 고쳐준다.

```
SHELLINABOX_ARGS="--no-beep --localhost-only --disable-ssl"
```

이후

```
sudo service shellinabox start
```

## 3. Proxy 설정

```
vi /etc/apache2/mods-available/proxy.conf                                                                                                                                                           
```
에 가서

```
<Location /shell>
	ProxyPass http://localhost:4200/
    Order Allow,Deny
    Allow from all
	AuthUserFile /etc/apache2/.htpasswd_siab
	AuthName "Welcome to SSH!"
	AuthType Basic
	require valid-user
</Location>
Redirect permanent /shell http://intelligence.korea.ac.kr/shell/
```

을 추가해준다.
