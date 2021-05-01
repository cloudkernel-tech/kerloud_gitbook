# Advanced Development

## Recommended Environment

General instructions on how to develop px4 firmware are shown in the official developer website: https://dev.px4.io/master/en/index.html

The recommended environment (well tested) is:

- Ubuntu 18.04
- ROS melodic with Gazebo 9

## Firmware Support

### Download Firmware

The px4 firmware for Kerloud autopilots is hosted at our official Github repository, and it will be maintained by our team and upgraded with official px4 firmware in a stable manner. Currently the firmware version is based on V1.10.0, and users can clone the repository in terminal with:

    git clone --recursive https://github.com/cloudkernel-tech/Firmware.git
    git checkout master_kerloud

Users in mainland China can clone our official repository hosted in Gitee alternatively to avoid the slow network problem:

    git clone --recursive https://gitee.com/cloudkernel-tech/Firmware.git
    git checkout master_kerloud

If submodules fail to be downloaded, one candidate solution is to modify the host file following instructions in <https://blog.csdn.net/qq_44621510/article/details/95251993>.
Then submodules can be updated with commands:

    cd Firmware
    git submodule init
    git submodule update --recursive

### Toolchain Setup

The toolchain setup can be done by following the official guide at:
https://dev.px4.io/master/en/setup/dev_env_linux_ubuntu.html

Users are advised to run the two convenience scripts: ubuntu.sh, ubuntu_sim_ros_melodic.sh for easy completion.

Users in mainland China may face the troublesome network problem, hence we provide customized scripts in the directory Firmware/Tools/setup/custom, and users can run the scripts via commands:

    cd Tools/setup/custom
    bash ubuntu.sh
    bash ubuntu_sim_ros_melodic.sh

### Build and Upload

The firmware can be built for Kerloud Mini autopilot via the make command:

    make px4_fmu-v3_default

and it can be uploaded via:

    make px4_fmu-v3_default upload


### Common Issues

If failure still occurs in the build process, we advise users to perform the following checks in sequence:

* (i) Make sure that these two convenience scripts have been executed successfully. If not, follow the corresponding error messages in terminal, and users can easily find
solutions with the help of google or bing search engine.

* (ii) Make sure that the GCC compiler path has been set as an environment variable in ~/.bashrc or ~/.profile as the form below:

        export PATH=~/gcc-arm-none-eabi-7-2017-q4-major/bin:$PATH

    Note that the GCC compiler is under rapid upgrade, later versions than 2017 q4 can cause compatibility problems.

* (iii) If the conda environment is activated by default, we advise users to turn it off temporarily because it can cause mismatch of python dependencies.
Users can do so by commenting the conda initialization section in ~/.bashrc.

For other issues, users can seek support from our after-sales.

## More Information

For more information on px4 usage users can visit:
<https://docs.px4.io>, and <https://dev.px4.io>

Issues can be opened at our github repository as well, and we will provide full support for our users.


