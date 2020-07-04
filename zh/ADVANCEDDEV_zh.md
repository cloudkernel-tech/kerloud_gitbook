# 高级开发

**推荐开发环境**

用户可以在官方网站上找到大部分的详细开发指导：
 <https://dev.px4.io/master/en/index.html>

我们通过详细测试推荐的开发环境是:

- Ubuntu 18.04
- ROS melodic with Gazebo 9

**固件支持**

针对Kerloud飞控固件在我们的官方Github库中，它会被我们长期维护并持续和px4固件更新．现在的版本是V1.10.0，用户可以通过下述命令获得固件源码：

    git clone --recursive https://github.com/cloudkernel-tech/Firmware.git
    git checkout master_kerloud

为了避免网络缓慢的问题，中国大陆用户可以通过以下命令获得我们放在Gitee库的同样固件代码：

    git clone --recursive https://gitee.com/cloudkernel-tech/Firmware.git
    git checkout master_kerloud

**开发组件安装**

开发组件安装的过程可以在官方链接找到：
<https://dev.px4.io/master/en/setup/dev_env_linux_ubuntu.html>

用户可以执行两个脚本文件来完成开发组件的轻松安装: ubuntu.sh, ubuntu_sim_ros_melodic.sh．

针对中国大陆用户，我们提供了定制的脚本程序来避免网络连接问题，用户可以在我们的固件源码目录下运行下述命令：

    cd Tools/setup/custom
    bash ubuntu.sh
    bash ubuntu_sim_ros_melodic.sh

**编译和加载固件**

针对Kerloud Mini飞控的固件可以通过make命令编译：

    make px4_fmu-v3_default

可以通过下述命令上传到飞控中：

    make px4_fmu-v3_default upload

**更多信息**

关于更多px4的使用方法，用户可以参考
<https://docs.px4.io>, and <https://dev.px4.io>

对于固件中出现的问题可以在Github通过issue反馈给我们，我们会提供详细指引服务．




