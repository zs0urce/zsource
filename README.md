# zsource
极空间 Dokcer 镜像  https://hub.docker.com/u/zsource  

欢迎PR


## 编译思源笔记Docker镜像

1. 克隆`思源笔记`最新代码 `git clone https://github.com/siyuan-note/siyuan.git`
2. 拷贝本项目 `siyuan` 目录中所有文件到`思源笔记`仓库代码目录中  
3. 在`思源笔记`仓库目录中编译对应架构的极空间可用的docker镜像  `./build_z4.sh` 

### 目录挂载
在极空间中创建目录映射至容器的 `/siyuan/workspace/` 作为思源笔记的  workspace 目录

### 环境配置
创建容器时，可配置如下环境
*  workspace 目录配置 `WORKSPACE=/siyuan/workspace/`
* 思源笔记访问授权码配置 `ACCESSAUTHCODE=`
* `PUID=0`
* `PGID=0`

### 访问端口
容器IP:6806

## 编译Chrome浏览器Docker镜像

```bash
cd chrome
./build_z4.sh
```

### 环境配置
创建容器时，可配置如下环境
*  VNC密码配置 `VNC_PASSWD=password`
* 浏览器窗口宽度配置 `WIDTH=1280`
* 浏览器窗口高度配置 `HEIGHT=720`

### 访问端口
容器IP:6080  
VNC认证默认密码 `password` 可通过环境变量 `VNC_PASSWD`配置
