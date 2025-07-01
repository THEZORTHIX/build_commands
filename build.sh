

#! /bin/bash

rm -rf .repo/local_manifests; \
repo init -u https://github.com/alphadroid-project/manifest -b alpha-15.2 --git-lfs; \
/opt/crave/resync.sh; \
/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone https://github.com/dev-harsh1998/android_device_xiaomi_nabu.git device/xiaomi/nabu; \
git clone https://gitlab.com/dev-harsh1998/android_vendor_xiaomi_nabu.git vendor/xiaomi/nabu; \
git clone https://github.com/Nabu-Project/kernel_xiaomi_sm8150; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi; \

. build/envsetup.sh; \
brunch munch
