# 高级开发

## 推荐开发环境

用户可以在官方网站上找到大部分的详细开发指导：
 <https://dev.px4.io/master/en/index.html>

我们通过详细测试推荐的开发环境是:

- Ubuntu 18.04
- ROS melodic with Gazebo 9

## 固件支持

### 固件下载

针对Kerloud飞控固件在我们的官方Github库中，它会被我们长期维护并持续和px4固件更新．现在的版本是V1.10.0，用户可以通过下述命令获得固件源码：

    git clone --recursive https://github.com/cloudkernel-tech/Firmware.git
    git checkout master_kerloud

为了避免网络缓慢的问题，中国大陆用户可以通过以下命令获得我们放在Gitee库的同样固件代码：

    git clone --recursive https://gitee.com/cloudkernel-tech/Firmware.git
    git checkout master_kerloud

如果有submodule子模块下载失败，用户可以考虑修改系统host文件，可参考<https://blog.csdn.net/qq_44621510/article/details/95251993>。
之后子模块可以通过下述命令更新：

    cd Firmware
    git submodule init
    git submodule update --recursive

### 开发组件安装

开发组件安装的过程可以在官方链接找到：
<https://dev.px4.io/master/en/setup/dev_env_linux_ubuntu.html>

用户可以执行两个脚本文件来完成开发组件的轻松安装: ubuntu.sh, ubuntu_sim_ros_melodic.sh．

针对中国大陆用户，我们提供了定制的脚本程序来避免网络连接问题，用户可以在我们的固件源码目录下运行下述命令：

    cd Tools/setup/custom
    bash ubuntu.sh
    bash ubuntu_sim_ros_melodic.sh

### 编译和加载固件

针对Kerloud Mini飞控的固件可以通过make命令编译：

    make px4_fmu-v3_default

可以通过下述命令上传到飞控中：

    make px4_fmu-v3_default upload

用户也可以直接从下述百度云链接下载我们编译好的固件，

链接: <https://pan.baidu.com/s/1ocMoEsS1x2c-RAJ9wfMtwA> 提取码: bmqf


### 常见问题

如果用户通过上述操作遇到编译失败问题，可以参考下述原因排查：

* (i) 确认前述的两个脚本程序成功执行完成，如果没有，请参考终端中的错误信息提示相应解决，通常可以通过google或者bing搜索轻松找到解决方法。

* (ii) 确认GCC编译器的路径已经成功设置成环境变量，通常被设置在~/.bashrc或~/.profile中，相应形式为：

        export PATH=~/gcc-arm-none-eabi-7-2017-q4-major/bin:$PATH

    注意GCC编译器的版本在快速升级，比2017Q4更新的版本可能会导致部分兼容性问题。

* (iii) 如果您安装了conda开发环境，建议您暂时关闭它，因为它会引发部分python软件的依赖项问题。您可以通过注释掉~/.bashrc中关于conda初始化部分的脚本完成。

对于其他问题，用户可以向我们的售后寻求支持。


### 更多信息

关于更多px4的使用方法，用户可以参考
<https://docs.px4.io>, and <https://dev.px4.io>

对于固件中出现的问题可以在Github通过issue反馈给我们，我们会提供详细指引服务．




