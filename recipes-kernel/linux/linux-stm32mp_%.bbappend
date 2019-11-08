FILESEXTRAPATHS_prepend := "${THISDIR}/linux-karo:"
SRC_URI_append = " \
    file://stm-bugfixes.patch \
    file://ltdc-bus-flags.patch \
    file://phy-reset-bugfix.patch \
    file://tianma-101jvhg32.patch \
    file://karo-txmp-support.patch \
"
# defconfig
KERNEL_CONFIG_FRAGMENTS = "${@bb.utils.contains('KERNEL_DEFCONFIG', 'txmp_defconfig', '${S}/arch/arm/configs/txmp_defconfig', '', d)}"
