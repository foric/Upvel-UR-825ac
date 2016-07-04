clear

export KBUILD_BUILD_USER="FoRiC"
export KBUILD_BUILD_HOST="Monster-PC"


#cp rtk_deconfig/defconfig_rtl819xd .config



./scripts/feeds update -a
./scripts/feeds install -a

#scripts/diffconfig.sh >mydiffconfig


#make clean
#make dirclean

make defconfig

make menuconfig


cp .config .config.bak

#make prereq

#make kernel_menuconfig
make V=sw -j5

#ccache make V=sw -j4 2>&1 | tee build.log


