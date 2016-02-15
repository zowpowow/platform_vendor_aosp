PRODUCT_BRAND ?= JDCTeam

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# SuperSU
#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/supersu/supersu.zip:system/supersu/supersu.zip

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false 

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aosp/overlay/common \
    vendor/aosp/overlay/dictionaries

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0 
    
# Set Selinux as permissive    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=0

# EXT4/F2FS format script
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/bin/format.sh:install/bin/format.sh
    
# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs

# Custom JDCTeam packages
#PRODUCT_PACKAGES += \
    BluetoothExt \
    GoogleDialer \
    LatinIME \
    Launcher3 \
    LayersManager \
    OTAUpdates \
    Stk \
    Toolbox
    
# ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0
    
# For keyboard gesture typing
#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# LEDify
#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/bin/ledify:system/bin/ledify
    
# init.d support
#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aosp/prebuilt/common/bin/sysinit:system/bin/sysinit

# JDC-specific init file
#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init.local.rc:root/init.jdc.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
#PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
#PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl
    
# OTA Updates
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.romname=AOSP-JF-6.0 \
    ro.ota.version=$(shell date -u +%Y%m%d) \
    ro.ota.manifest=http://romhut.com/roms/aosp-jf-6-0/ota.xml

# Prebuilt ConsumerIR
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/lib/hw/consumerir.msm8960.old:system/lib/hw/consumerir.msm8960.old
    
# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml
    
PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.recovery_update=false

# Changelog
PRODUCT_COPY_FILES += \
    vendor/aosp/Changelog.md:system/etc/Changelog.md
