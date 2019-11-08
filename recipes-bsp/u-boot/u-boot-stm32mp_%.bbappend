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
  file://show_activity-bugfix.patch \
  file://hclk6-bugfix.patch \
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
  file://stm-bugfixes.patch \
  file://fdtsize-variable.patch \
  file://txmp-support.patch \
"

# Define U-Boot configs
UBOOT_CONFIG = ""
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'basic', 'basic', '', d)}"
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'mfg', 'mfg', '', d)}"
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'noenv', 'noenv', '', d)}"
UBOOT_CONFIG += "${@bb.utils.contains('BOOTSCHEME_LABELS', 'trusted', 'trusted', '', d)}"

# =========================================================================
# U-Boot configs
# =========================================================================
UBOOT_CONFIG[basic]   = "qsmp-1570_defconfig,,u-boot.img"
UBOOT_CONFIG[noenv]   = "qsmp-1570_noenv_defconfig,,u-boot.img"
UBOOT_CONFIG[mfg] = "qsmp-1570_mfg_defconfig,,u-boot.stm32"
UBOOT_CONFIG[trusted] = "qsmp-1570_trusted_defconfig,,u-boot.stm32"
