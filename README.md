# zsource
极空间 Dokcer 镜像
欢迎PR


## 编译思源笔记Docker镜像

1. 克隆`思源笔记`最新代码 `git clone https://github.com/siyuan-note/siyuan.git`
2. 拷贝本项目 `siyuan` 目录中所有文件到`思源笔记`仓库代码目录中  
3. 在`思源笔记`仓库目录中编译对应架构的极空间可用的docker镜像  `./build_z4.sh` 


## 编译Chrome浏览器Docker镜像

```bash
cd chrome
./build_z4.sh
```