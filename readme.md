centos7，需要安装yum install python3.6的开发包
```安装EPEL源
#yum install epel-release -y
安装python3开发包
#yum install python36-devel -y
```
* ubuntu自行谷歌,比centos7简单

安装boost，下载boost的源码，我这里下载了稳定版本1.67.0。
```
wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
```
然后tar解压
```
cd boost_1_67_0
tar -xzvf boost_1_67_0.tar.gz
```
`./bootstrap.sh`

`./b2 --with-python="python36开发包的路径(就是那一堆.h文件，推荐搜索find \ -name "pyconfig.h",就能找到路径)"`

装完之后用

`./b2 install`

可以反复装，我反复装了好几次了，把boost全部装上，也就是说上面也可以用
`./b2 --with-python="python2的路径"`
装上python2的部分boost

boost装完就完成了一半了

下载原版的vnpy，进入api文件夹下的ctp，修改CMakeLists.txt，看我的CMakeLists.txt
```
cmake .
make 
```
~~我服务器内存只有1G，如果你内存小于2G的话，你还需要去调你的系统配置~~

```auto
需要更改目录，提示是说用`bash build.sh`,我全部用的是cmake .和make最后就会在lib文件夹里生成两个.so，可以直接调用。
我这里生成好了，提供出来
[so文件](https://github.com/Ye980226/vnpy_leon/)auto```

github还提供了ib的windows和linux的python3 64位版