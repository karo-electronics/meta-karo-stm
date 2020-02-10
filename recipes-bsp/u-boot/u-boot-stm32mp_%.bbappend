STM32MP_SOURCE_SELECTION = "github"

FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot-karo:"
SRC_URI_append = " \
	file://karo.bmp;subdir=git/tools/logos \
	file://env-callback-bugfix.patch \
	file://env-callback-returnvalue.patch \
	file://dot_callbacks-bugfix.patch \
	file://bmp-logo.patch \
	file://rtc_to_tm-bugfix.patch \
	file://backlight-errmsgs.patch \
	file://usb-otg-phy-errmsg.patch \
	file://ddr-interactive-wdog.patch \
	file://md-wdog.patch \
	file://stm32-ltdc-bugfix.patch \
	file://err-value-bugfix.patch \
	file://phy-skew-bugfix.patch \
	file://stm32-sdmmc-bugfix.patch \
	file://gpio-uclass-bugfix.patch \
	file://clk-dbg-msgs.patch \
	file://dev_printk-devname.patch \
	file://stm32-pkg-names.patch \
	file://adc-uclass-errmsg.patch \
	file://signed-compare-bugfix.patch \
	file://lldiv-bugfix.patch \
	file://show_activity-bugfix.patch \
	file://hclk6-bugfix.patch \
	file://stm32mp-clk-cleanup.patch \
	file://gpt-help-formatting.patch \
	file://led-blink-bugfix.patch \
	file://cmd-ret-bugfix.patch \
	file://bootp-random-id.patch \
	file://seed_mac-bugfix.patch \
	file://boot_mode-debug.patch \
	file://native-mode.patch \
	file://missing-newline.patch \
	file://mmc-pr_err.patch \
	file://pr_err.patch \
	file://dwc-eth-bugfix.patch \
	file://dwc-eth-phy-reset.patch \
	file://of-live-bugfixes.patch \
	file://cell_count-bugfixes.patch \
	file://dev_read_addr_size-bugfix.patch \
	file://np-parent-bugfix.patch \
	file://regmap-init-bugfix.patch \
	file://stm-bugfixes.patch \
	file://fdtsize-variable.patch \
	file://txmp-support.patch \
	file://baseboard_env_callback.patch \
	file://txmp-v2.patch \
"

# Define U-Boot configs
UBOOT_CONFIG = ""
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'basic', 'basic', '', d)}"
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'mfg', 'mfg', '', d)}"
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'noenv', 'noenv', '', d)}"
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'trusted', 'trusted', '', d)}"