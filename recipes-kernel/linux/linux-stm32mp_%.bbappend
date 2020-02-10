FILESEXTRAPATHS_prepend := "${THISDIR}/linux-karo:"
SRC_URI_append = " \
	file://txmp_defconfig;subdir=linux-4.19.49/arch/arm/configs \
	file://dts/stm32mp15-ddr.dtsi;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp15-mx.h;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp15-txmp-mb7.dtsi;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp15-txmp.dtsi;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp153a-txmp-1530-mb7.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp153a-txmp-1530-mipi-mb.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp153a-txmp-1530.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp157c-qsmp-1570-qsbase1.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp157c-qsmp-1570.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp157c-txmp-1570.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp157c-txmp-1570-mb7.dts;subdir=linux-4.19.49/arch/arm/boot \
	file://dts/stm32mp157c-txmp-1570-mipi-mb.dts;subdir=linux-4.19.49/arch/arm/boot \
    	file://stm-bugfixes.patch \
    	file://ltdc-bus-flags.patch \
    	file://phy-reset-bugfix.patch \
    	file://tianma-101jvhg32.patch \
    	file://karo-txmp-support.patch \
"
# defconfig
KERNEL_CONFIG_FRAGMENTS = "${@bb.utils.contains('KERNEL_DEFCONFIG', 'txmp_defconfig', '${S}/arch/arm/configs/txmp_defconfig', '', d)}"
