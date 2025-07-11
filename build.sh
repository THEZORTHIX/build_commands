

#! /bin/bash

rm -rf .repo/local_manifests; \
#repo init -u https://github.com/crdroidandroid/android -b 15.0 --git-lfs; \
#repo init -u https://github.com/WitAqua/manifest.git -b 15 --git-lfs; \
repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs; \
#repo init -u https://github.com/WitAqua/manifest.git -b 16.0 --git-lfs; \
rm -rf prebuilts/clang/host/linux-x86; \
/opt/crave/resync.sh; \
/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone https://github.com/thezorthix/android_device_xiaomi_munch device/xiaomi/munch; \
git clone https://github.com/thezorthix/android_device_xiaomi_sm8250-common device/xiaomi/sm8250-common; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_munch vendor/xiaomi/munch; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_munch-firmware vendor/xiaomi/munch-firmware; \
git clone https://github.com/SenseiiX/fusionX_sm8250/tree/a16 kernel/xiaomi/sm8250; \
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi; \
git clone https://github.com/PocoF3Releases/packages_resources_devicesettings packages/resources/devicesettings; \
git clone https://gitlab.com/rik-x777/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX; \
git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera vendor/xiaomi/miuicamera; \
. build/envsetup.sh; \
breakfast munch
brunch munch
