# Remove Pixel kernel header
rm hardware/google/pixel/kernel_headers/Android.bp

# Kernel fixups
rm kernel/xiaomi/fog/Android.bp
rm kernel/xiaomi/fog/techpack/audio/Android.bp

curDir=`pwd`
if [ "$non_hybris" = "yes" ]; then
   wget https://github.com/SourceLab081/uploadz/releases/download/v0.2.1/BoardConfig.mk && mv BoardConfig.mk device/xiaomi/fog/
   cd kernel/xiaomi/fog && rm -rf KernelSU-Next && curl -LSs "https://raw.githubusercontent.com/KernelSU-Next/KernelSU-Next/next/kernel/setup.sh" | bash - && cd $curDir
fi