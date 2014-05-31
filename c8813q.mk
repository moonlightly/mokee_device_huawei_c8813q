#
# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit the c8813q definitions
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8813q/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

# Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw

PRODUCT_PACKAGES += \
    gps.msm7x27a
    # lights.msm7x27a

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    hwmac \
    make_ext4fs \
    setup_fs
# Files
PRODUCT_COPY_FILES += \
    device/huawei/c8813q/rootdir/init.huawei.rc:root/init.huawei.rc \
    device/huawei/c8813q/rootdir/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/c8813q/rootdir/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/c8813q/rootdir/fstab.huawei:root/fstab.huawei \
    device/huawei/c8813q/rootdir/init.device.rc:root/init.device.rc \
    device/huawei/c8813q/rootdir/1191601.img:root/tp/1191601.img
    
PRODUCT_COPY_FILES += \
    device/huawei/c8813q/configs/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

PRODUCT_COPY_FILES += \
    device/huawei/c8813q/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/c8813q/configs/thermald.conf:system/etc/thermald.conf \
    device/huawei/c8813q/configs/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    device/huawei/c8813q/configs/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/huawei/c8813q/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

PRODUCT_COPY_FILES += \
    device/huawei/c8813q/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/c8813q/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/huawei/c8813q/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/c8813q/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/huawei/c8813q/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

PRODUCT_COPY_FILES += \
    device/huawei/c8813q/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/c8813q/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/huawei/c8813q/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/c8813q/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/huawei/c8813q/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/c8813q/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/c8813q/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    device/huawei/c8813q/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/c8813q/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/c8813q/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/c8813q/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/c8813q/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    headset.hook.delay=500

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true \
    ro.qualcomm.bluetooth.ftp=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240 \
    persist.sys.thermal.monitor=1

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=32m \
    dalvik.vm.heapsize=96m \
    ro.config.low_ram=true

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    rild.libargs=-d/dev/smd0 \
    ro.telephony.call_ring.delay=3000 \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.vold.umsdirtyratio=50

PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=60
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.confg.hw_appfsversion=C8813QV4_3_SYSIMG \
    ro.confg.hw_appsbootversion=C8813QV4_3_APPSBOOT \
    ro.confg.hw_appversion=C8813QV4_3_KERNEL

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.version.baseband=3110 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.ril.v3=qcomdsds,skippinpukcount \
    ro.telephony.ril_class=HuaweiCdmaQcomRIL \
    ro.cdma.home.operator.numeric=46003 \
    ro.telephony.default_network=4 \
    ro.telephony.default_cdma_sub=0 \
    ro.cdma.factory=china \
    ro.cdma.home.operator.alpha=中国电信

$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, vendor/huawei/c8813q/c8813q-vendor.mk)
