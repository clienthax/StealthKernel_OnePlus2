git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 --depth=1
export CROSS_COMPILE=./aarch64-linux-android-4.9/bin/aarch64-linux-android-;
export ARCH=arm64;
export SUBARCH=arm64;
STRIP="aarch64-linux-android-4.9/bin/aarch64-linux-android-strip";
export CCOMPILE=$CROSS_COMPILE;
export CROSS_COMPILE=aarch64-linux-gnu-;
export PATH=$PATH:./aarch64-linux-android-4.9/bin/;
make stealth_defconfig;
make -j$(nproc --all);
