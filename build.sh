
#! /bin/bash

rm -rf .repo/local_manifests; \
repo init -u https://github.com/WitAqua/manifest.git -b 15.2 --git-lfs; \
/opt/crave/resync.sh; \
/opt/crave/resync.sh; \

git clone https://github.com/dev-harsh1998/android_device_xiaomi_nabu.git device/xiaomi/nabu; \
git clone https://gitlab.com/dev-harsh1998/android_vendor_xiaomi_nabu.git vendor/xiaomi/nabu; \
git clone https://github.com/neokoni/android_kernel_xiaomi_nabu.git -b lineage-22.2 kernel/xiaomi/nabu; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi; \
cd packages/apps && git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git ViPER4AndroidFX && cd ViPER4AndroidFX && git checkout v4a && cd .. && cd .. && cd ..; \

. build/envsetup.sh; \
lunch lineage_nabu-bp1a-userdebug; \
mka bacon
